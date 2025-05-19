import 'package:firebase_messaging/firebase_messaging.dart';

import '/backend/api_requests/api_calls.dart';
import '/components/invalid_credentials_component/invalid_credentials_component_widget.dart';
import '/components/user_is_not_active_component/user_is_not_active_component_widget.dart';
import '/components/user_not_authenticated_component/user_not_authenticated_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart'; // This should import DashboardAssignedTaskPageWidget and RegisterPageWidget
// If FirebaseMessaging is used, ensure it's imported:
// import 'package:firebase_core/firebase_core.dart'; // For Firebase.apps
// import 'package:firebase_messaging/firebase_messaging.dart';
import '/backend/supabase/supabase.dart'; // For SupaFlow.client if used for FCM token saving

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_page_model.dart';
export 'login_page_model.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({super.key});

  static String routeName = 'LoginPage';
  static String routePath = '/loginPage';

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget>
    with TickerProviderStateMixin {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageModel());

    _model.emailAddressTextController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 140.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.9, 1.0),
            end: Offset(1.0, 1.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(-0.349, 0),
            end: Offset(0, 0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/orange.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(-0.08, -0.62),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 370.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/logo_transparent.png',
                          width: 300.0,
                          height: 213.41,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.53),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16.0, 230.0, 16.0, 16.0),
                      child: Container(
                        width: double.infinity,
                        height: 468.85,
                        constraints: BoxConstraints(
                          maxWidth: 570.0,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Form(
                            key: _model.formKey,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Padding(
                              padding: EdgeInsets.all(32.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Welcome Back',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context).displaySmall.override(
                                        fontFamily: FlutterFlowTheme.of(context).displaySmallFamily,
                                        color: Color(0xFF101213),
                                        fontSize: 36.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).displaySmallFamily),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                                      child: Text(
                                        'Fill out the information below in order to access your account.',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context).labelMedium.override(
                                          fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                          color: Color(0xFF57636C),
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                        ),
                                      ),
                                    ),
                                    if (_model.isLoginInvalid)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                                        child: wrapWithModel(
                                          model: _model.invalidCredentialsComponentModel,
                                          updateCallback: () => setState(() {}),
                                          child: InvalidCredentialsComponentWidget(),
                                        ),
                                      ),
                                    if (_model.isUserNotAuthenticated)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                                        child: wrapWithModel(
                                          model: _model.userNotAuthenticatedComponentModel,
                                          updateCallback: () => setState(() {}),
                                          child: UserNotAuthenticatedComponentWidget(),
                                        ),
                                      ),
                                    if (FFAppState().userNotActive)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                                        child: wrapWithModel(
                                          model: _model.userIsNotActiveComponentModel,
                                          updateCallback: () => setState(() {}),
                                          child: UserIsNotActiveComponentWidget(),
                                        ),
                                      ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                      child: Container(
                                        width: double.infinity,
                                        child: TextFormField(
                                          controller: _model.emailAddressTextController,
                                          focusNode: _model.emailAddressFocusNode,
                                          autofocus: true,
                                          autofillHints: [AutofillHints.email],
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Email',
                                            labelStyle: FlutterFlowTheme.of(context).labelLarge.override(
                                              fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                              color: Color(0xFF57636C),
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Color(0xFFF1F4F8), width: 2.0),
                                              borderRadius: BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Color(0xFF4B39EF), width: 2.0),
                                              borderRadius: BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Color(0xFFE0E3E7), width: 2.0),
                                              borderRadius: BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Color(0xFFE0E3E7), width: 2.0),
                                              borderRadius: BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor: Color(0xFFF1F4F8),
                                          ),
                                          style: FlutterFlowTheme.of(context).bodyLarge.override(
                                            fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                            color: Color(0xFF101213),
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                          ),
                                          keyboardType: TextInputType.emailAddress,
                                          validator: _model.emailAddressTextControllerValidator.asValidator(context),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                      child: Container(
                                        width: double.infinity,
                                        child: TextFormField(
                                          controller: _model.passwordTextController,
                                          focusNode: _model.passwordFocusNode,
                                          autofocus: true,
                                          autofillHints: [AutofillHints.password],
                                          obscureText: !_model.passwordVisibility,
                                          decoration: InputDecoration(
                                            labelText: 'Password',
                                            labelStyle: FlutterFlowTheme.of(context).labelLarge.override(
                                              fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                              color: Color(0xFF57636C),
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Color(0xFFF1F4F8), width: 2.0),
                                              borderRadius: BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Color(0xFF4B39EF), width: 2.0),
                                              borderRadius: BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Color(0xFFE0E3E7), width: 2.0),
                                              borderRadius: BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Color(0xFFE0E3E7), width: 2.0),
                                              borderRadius: BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor: Color(0xFFF1F4F8),
                                            suffixIcon: InkWell(
                                              onTap: () => setState(() => _model.passwordVisibility = !_model.passwordVisibility),
                                              focusNode: FocusNode(skipTraversal: true),
                                              child: Icon(
                                                _model.passwordVisibility ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                                                color: Color(0xFF57636C),
                                                size: 24.0,
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context).bodyLarge.override(
                                            fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                            color: Color(0xFF101213),
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                          ),
                                          validator: _model.passwordTextControllerValidator.asValidator(context),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          var _shouldSetState = false;
                                          if (_model.formKey.currentState == null || !_model.formKey.currentState!.validate()) {
                                            return;
                                          }

                                          _model.apiResultdgh = await LoginCall.call(
                                            email: _model.emailAddressTextController.text,
                                            password: _model.passwordTextController.text,
                                          );

                                          _shouldSetState = true;

                                          if (!(_model.apiResultdgh?.succeeded ?? true)) {
                                            if ((_model.apiResultdgh?.bodyText ?? '') ==
                                                '{\"code\":400,\"error_code\":\"invalid_credentials\",\"msg\":\"Invalid login credentials\"}') {
                                              _model.isLoginInvalid = true;
                                            } else {
                                              _model.isUserNotAuthenticated = true;
                                            }
                                          } else {
                                            _model.isLoginInvalid = false;
                                            _model.isUserNotAuthenticated = false;

                                            FFAppState().accessToken = LoginCall.accesstoken(
                                              (_model.apiResultdgh?.jsonBody ?? ''),
                                            )!;

                                            _model.api = await GetUsersCall.call(
                                              id: LoginCall.id((_model.apiResultdgh?.jsonBody ?? '')),
                                              accessToken: FFAppState().accessToken,
                                            );
                                            _shouldSetState = true;

                                            if ((GetUsersCall.userStatus((_model.api?.jsonBody ?? '')) == 'Active')) {
                                              FFAppState().userNotActive = false;
                                              FFAppState().usertype = GetUsersCall.type((_model.api?.jsonBody ?? ''))!;
                                              FFAppState().userName = GetUsersCall.name((_model.api?.jsonBody ?? ''))!;
                                              FFAppState().userid = GetUsersCall.id((_model.api?.jsonBody ?? ''))!;

                                              print('✅ Login successful and user is Active. Attempting to get FCM token...');
                                              try {
                                                String? fcmToken = await FirebaseMessaging.instance.getToken();

                                                if (fcmToken != null) {
                                                  print('✅ FCM Token fetched successfully: $fcmToken');

                                                  final response = await SupaFlow.client
                                                      .from('users')
                                                      .update({'fcm_token': fcmToken})
                                                      .eq('id', FFAppState().userid)
                                                      .select();
                                                  print('✅ FCM Token update attempted for user: ${FFAppState().userid} with token: $fcmToken');
                                                } else {
                                                  print('❌ FCM Token was null. Could not fetch.');
                                                }
                                              } catch (e) {
                                                print('❌ Exception during FCM token fetch/save: $e');
                                              }

                                              context.pushNamed(DashboardAssignedTaskPageWidget.routeName);
                                            } else {
                                              FFAppState().userNotActive = true;
                                              print('ℹ️ User login successful but account is not Active.');
                                            }
                                          }

                                          if (_shouldSetState) {
                                            setState(() {});
                                          }
                                        },                                        text: 'Sign In', // Added text
                                        options: FFButtonOptions( // Added options
                                          width: double.infinity,
                                          height: 44.0,
                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                          color: Color(0xFFFD8205), // Matches your theme
                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                            fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                          ),
                                          elevation: 3.0,
                                          borderSide: BorderSide(color: Colors.transparent, width: 1.0),
                                          borderRadius: BorderRadius.circular(12.0),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(RegisterPageWidget.routeName);
                                        },
                                        child: RichText(
                                          textScaler: MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(text: 'Don\'t have an account?  ', style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                color: Color(0xFF101213), // Explicit color for better visibility
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                              )),
                                              TextSpan(
                                                text: 'Sign Up here',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                  color: Color(0xFFFD8205),
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                ),
                                              )
                                            ],
                                            // Default style for the RichText if not overridden by TextSpans
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                              color: Color(0xFF101213),
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}