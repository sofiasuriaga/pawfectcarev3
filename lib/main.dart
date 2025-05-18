import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:paw_fect_care/util/NotificationService.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:paw_fect_care/firebase_options.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/nav/nav.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  print("Handling a background message: ${message.messageId}");
  print("Background Message data: ${message.data}");
  if (message.notification != null) {
    print(
        "Background Notification: ${message.notification?.title} - ${message.notification?.body}");
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  usePathUrlStrategy();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseMessaging.onBackgroundMessage(
      _firebaseMessagingBackgroundHandler);

  if (!kIsWeb) {
    await NotificationService.initialize();
  }

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    print('Message data: ${message.data}');
    if (message.notification != null) {
      print(
          'Message also contained a notification: ${message.notification?.title}');
      if (!kIsWeb) {
        NotificationService.showNotification(message);
      }
    }
  });

  FirebaseMessaging.instance
      .getInitialMessage()
      .then((RemoteMessage? message) {
    if (message != null) {
      print(
          'App opened from terminated state by notification: ${message.messageId}');
      print('Terminated state notification data: ${message.data}');
    }
  });

  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    print(
        'App opened from background state by notification: ${message.messageId}');
    print('Background state notification data: ${message.data}');
  });

  await SupaFlow.initialize();

  await FlutterFlowTheme.initialize();
  final appState = FFAppState();
  await appState.initializePersistedState();

  final session = Supabase.instance.client.auth.currentSession;
  if (session != null && !kIsWeb) {
    final token = await FirebaseMessaging.instance.getToken();
    if (token != null) {
      await Supabase.instance.client
          .from('users')
          .update({'fcm_token': token})
          .eq('id', session.user.id);
      print('Initial FCM token saved for user ${session.user.id}');
    }
  }

  runApp(
    ChangeNotifierProvider(
      create: (context) => appState,
      child: MyApp(),
    ),
  );
}

final supabase = Supabase.instance.client;

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = FlutterFlowTheme.themeMode;
  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;

  String getRoute([RouteMatch? routeMatch]) {
    final RouteMatch lastMatch =
        routeMatch ??
            _router.routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : _router.routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }

  List<String> getRouteStack() =>
      _router.routerDelegate.currentConfiguration.matches
          .map((e) => getRoute(e))
          .toList();

  @override
  void initState() {
    super.initState();
    _appStateNotifier = AppStateNotifier.instance;
    _router = createRouter(_appStateNotifier);

    supabase.auth.onAuthStateChange.listen((event) async {
      if (event.session != null &&
          (event.event == AuthChangeEvent.signedIn ||
              event.event == AuthChangeEvent.tokenRefreshed ||
              event.event == AuthChangeEvent.initialSession)) {
        if (!kIsWeb) {
          try {
            NotificationSettings settings =
            await FirebaseMessaging.instance.requestPermission(
              alert: true,
              announcement: false,
              badge: true,
              carPlay: false,
              criticalAlert: false,
              provisional: false,
              sound: true,
            );

            if (settings.authorizationStatus ==
                AuthorizationStatus.authorized) {
              print('User granted notification permission');

              final fcmToken =
              await FirebaseMessaging.instance.getToken();
              print("FCM Token: $fcmToken");

              if (fcmToken != null) {
                final userId = supabase.auth.currentUser?.id;
                if (userId != null) {
                  await supabase
                      .from('users')
                      .update({'fcm_token': fcmToken})
                      .eq('id', userId);
                  print(
                      'FCM token updated in Supabase for user: $userId');
                }
              }
            } else {
              print(
                  'User declined or has not accepted notification permission');
            }
          } catch (e) {
            print(
                'Error requesting permission or getting/saving FCM token: $e');
          }
        }
      } else if (event.event == AuthChangeEvent.signedOut) {
        print(
            'User signed out. FCM token not explicitly cleared from client-side on sign-out.');
      }
    });

    FirebaseMessaging.instance.onTokenRefresh.listen(
            (newFcmToken) async {
          print('FCM Token Refreshed: $newFcmToken');
          if (!kIsWeb) {
            final userId = supabase.auth.currentUser?.id;
            if (userId != null) {
              try {
                await supabase
                    .from('users')
                    .update({'fcm_token': newFcmToken})
                    .eq('id', userId);
                print(
                    'Refreshed FCM token updated in Supabase for user: $userId');
              } catch (e) {
                print('Error saving refreshed FCM token to Supabase: $e');
              }
            }
          }
        });
  }

  void setThemeMode(ThemeMode mode) => setState(() {
    _themeMode = mode;
    FlutterFlowTheme.saveThemeMode(mode);
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'PawFectCare',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: false,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: false,
      ),
      themeMode: _themeMode,
      routerConfig: _router,
    );
  }
}
