import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/add_task_component/add_task_component_widget.dart';
import '/components/bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import '/components/delete_task_widget.dart';
import '/components/follow_up_task_component/follow_up_task_component_widget.dart';
import '/components/pop_up_task_component/pop_up_task_component_widget.dart';
import '/components/success_component/success_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
// import 'package:your_app_name/utils/task_filter_utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dashboard_assigned_task_page_model.dart';
export 'dashboard_assigned_task_page_model.dart';

class DashboardAssignedTaskPageWidget extends StatefulWidget {
  const DashboardAssignedTaskPageWidget({super.key});

  static String routeName = 'DashboardAssignedTaskPage';
  static String routePath = '/dashboardAssignedTaskPage';

  @override
  State<DashboardAssignedTaskPageWidget> createState() =>
      _DashboardAssignedTaskPageWidgetState();
}

class _DashboardAssignedTaskPageWidgetState
    extends State<DashboardAssignedTaskPageWidget>
    with TickerProviderStateMixin {
  late DashboardAssignedTaskPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardAssignedTaskPageModel());

    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          _model.apiResult464 = await GetTasksWithDogsCall.call(
            accessToken: FFAppState().accessToken,
          );
        }),
        Future(() async {
          _model.getUsersResponse = await GetUsersCall.call(
            accessToken: FFAppState().accessToken,
          );
        }),
        Future(() async {
          _model.getDogsRespons = await GetDogsCall.call(
            accessToken: FFAppState().accessToken,
          );
        }),
      ]);
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    _searchController.addListener(() {
      if (mounted) {
        safeSetState(() {
          _searchQuery = _searchController.text;
        });
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/blue.png',
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/logo_transparent.png',
                                        width: 100.0,
                                        height: 100.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          200.0, 25.0, 0.0, 0.0),
                                      child: Icon(
                                        Icons.notifications_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .warning,
                                        size: 30.0,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 25.0, 15.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.apiResulttcc =
                                          await LogoutCall.call(
                                            accessToken:
                                            FFAppState().accessToken,
                                          );

                                          context.pushNamed(
                                              LoginPageWidget.routeName);

                                          safeSetState(() {});
                                        },
                                        child: Icon(
                                          Icons.login,
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          size: 30.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 1.0)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Tasks Assigned',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                      fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineSmallFamily),
                                    ),
                                  ),
                                  if ((FFAppState().usertype == 'Admin') ||
                                      (FFAppState().usertype == 'Owner'))
                                    Builder(
                                      builder: (context) => Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 15.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                  Colors.transparent,
                                                  alignment:
                                                  AlignmentDirectional(
                                                      0.0, 0.0)
                                                      .resolve(
                                                      Directionality.of(
                                                          context)),
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      FocusScope.of(
                                                          dialogContext)
                                                          .unfocus();
                                                      FocusManager
                                                          .instance.primaryFocus
                                                          ?.unfocus();
                                                    },
                                                    child: Container(
                                                      height: 500.0,
                                                      width: 355.0,
                                                      child:
                                                      AddTaskComponentWidget(),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          text: 'New Task',
                                          icon: Icon(
                                            Icons.add_outlined,
                                            size: 20.0,
                                          ),
                                          options: FFButtonOptions(
                                            height: 35.0,
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16.0, 0.0, 16.0, 0.0),
                                            iconAlignment: IconAlignment.start,
                                            iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                            color: Color(0xFFFD8205),
                                            textStyle: FlutterFlowTheme.of(
                                                context)
                                                .titleSmall
                                                .override(
                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                            ),
                                            elevation: 0.0,
                                            borderRadius:
                                            BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 10.0, 15.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 45.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 5.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          controller: _searchController,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Search tasks...',
                                            hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              color: Colors.grey,
                                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                              ),
                                            ),
                                            enabledBorder: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            filled: true,
                                            fillColor: Colors.white,
                                          ),
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            color: Colors.black,
                                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                            ),
                                          ),
                                          onChanged: (value) {},
                                          onSubmitted: (value) {
                                            safeSetState(() {
                                              _searchQuery = value;
                                            });
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.search_outlined,
                                          color: FlutterFlowTheme.of(context).success,
                                          size: 24.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 110.0),
                              child: Container(
                                width: 355.0,
                                height: 456.09,
                                constraints: BoxConstraints(
                                  maxHeight: 504.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment(0.0, 0),
                                      child: TabBar(
                                        labelColor: Colors.black,
                                        unselectedLabelColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                          fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                        ),
                                        unselectedLabelStyle: FlutterFlowTheme
                                            .of(context)
                                            .titleMedium
                                            .override(
                                          fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                        ),
                                        indicatorColor: Color(0xFFFD8205),
                                        tabs: [
                                          Tab(
                                            text: 'Current',
                                          ),
                                          Tab(
                                            text: 'Completed',
                                          ),
                                        ],
                                        controller: _model.tabBarController,
                                        onTap: (i) async {
                                          [() async {}, () async {}][i]();
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        controller: _model.tabBarController,
                                        children: [
                                          FutureBuilder<ApiCallResponse>(
                                            future: GetTasksWithDogsCall.call(
                                              accessToken:
                                              FFAppState().accessToken,
                                            ),
                                            builder: (context, snapshot) {
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                    CircularProgressIndicator(
                                                      valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              final listViewGetTasksWithDogsResponse =
                                              snapshot.data!;

                                              return Builder(
                                                builder: (context) {
                                                  var allTasks = (listViewGetTasksWithDogsResponse
                                                      .jsonBody
                                                      .toList()
                                                      .map<TasksWithDogStruct?>(
                                                      TasksWithDogStruct.maybeFromMap)
                                                      .toList()
                                                  as Iterable<TasksWithDogStruct?>)
                                                      .withoutNulls;

                                                  final filteredCurrentTasks = allTasks
                                                      .where((task) => task.status == 'Active')
                                                      .where((task) {
                                                    if (_searchQuery.isEmpty) {
                                                      return true;
                                                    }
                                                    final query = _searchQuery.toLowerCase();
                                                    return (task.taskTitle?.toLowerCase().contains(query) ?? false) ||
                                                        (task.taskDescription?.toLowerCase().contains(query) ?? false) ||
                                                        (task.dog.dogName?.toLowerCase().contains(query) ?? false) ||                                                        (task.assignedToUser.userFullname?.toLowerCase().contains(query) ?? false) ||
                                                        (task.assignedByUser.userFullname?.toLowerCase().contains(query) ?? false);
                                                  })
                                                      .toList()
                                                      .sortedList(
                                                      keyOf: (e) => e.dateCreated,
                                                      desc: true);

                                                  final tasksWithDogsAndUsersV2 = filteredCurrentTasks;

                                                  if (tasksWithDogsAndUsersV2.isEmpty && _searchQuery.isNotEmpty) {
                                                    return Center(child: Text('No tasks found for "$_searchQuery"'));
                                                  } else if (tasksWithDogsAndUsersV2.isEmpty) {
                                                    return Center(child: Text('No current tasks.'));
                                                  }

                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                    Axis.vertical,
                                                    itemCount:
                                                    tasksWithDogsAndUsersV2
                                                        .length,
                                                    itemBuilder: (context,
                                                        tasksWithDogsAndUsersV2Index) {
                                                      final tasksWithDogsAndUsersV2Item =
                                                      tasksWithDogsAndUsersV2[
                                                      tasksWithDogsAndUsersV2Index];
                                                      return SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            if ((FFAppState()
                                                                .usertype ==
                                                                'Admin') ||
                                                                (FFAppState()
                                                                    .usertype ==
                                                                    'Owner'))
                                                              Align(
                                                                alignment:
                                                                AlignmentDirectional(
                                                                    1.0,
                                                                    0.0),
                                                                child: Builder(
                                                                  builder:
                                                                      (context) =>
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional
                                                                            .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            30.0,
                                                                            0.0),
                                                                        child:
                                                                        InkWell(
                                                                          splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                          focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                          hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                          highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                          onTap:
                                                                              () async {
                                                                            await showDialog(
                                                                              context:
                                                                              context,
                                                                              builder:
                                                                                  (dialogContext) {
                                                                                return Dialog(
                                                                                  elevation: 0,
                                                                                  insetPadding: EdgeInsets.zero,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                  child: GestureDetector(
                                                                                    onTap: () {
                                                                                      FocusScope.of(dialogContext).unfocus();
                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                    },
                                                                                    child: DeleteTaskWidget(
                                                                                      id: tasksWithDogsAndUsersV2Item.id,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            );
                                                                          },
                                                                          child:
                                                                          Icon(
                                                                            Icons
                                                                                .delete,
                                                                            color: FlutterFlowTheme.of(context)
                                                                                .error,
                                                                            size:
                                                                            20.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                ),
                                                              ),
                                                            Builder(
                                                              builder:
                                                                  (context) =>
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        20.0,
                                                                        10.0,
                                                                        20.0,
                                                                        0.0),
                                                                    child: InkWell(
                                                                      splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                      focusColor: Colors
                                                                          .transparent,
                                                                      hoverColor: Colors
                                                                          .transparent,
                                                                      highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        if (FFAppState()
                                                                            .usertype ==
                                                                            'Caretaker') {
                                                                          await showDialog(
                                                                            context:
                                                                            context,
                                                                            builder:
                                                                                (dialogContext) {
                                                                              return Dialog(
                                                                                elevation:
                                                                                0,
                                                                                insetPadding:
                                                                                EdgeInsets.zero,
                                                                                backgroundColor:
                                                                                Colors.transparent,
                                                                                alignment:
                                                                                AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                child:
                                                                                GestureDetector(
                                                                                  onTap: () {
                                                                                    FocusScope.of(dialogContext).unfocus();
                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                  },
                                                                                  child: Container(
                                                                                    height: 400.0,
                                                                                    width: 400.0,
                                                                                    child: PopUpTaskComponentWidget(
                                                                                      tasks: tasksWithDogsAndUsersV2Item,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          );
                                                                        } else {
                                                                          await showDialog(
                                                                            context:
                                                                            context,
                                                                            builder:
                                                                                (dialogContext) {
                                                                              return Dialog(
                                                                                elevation:
                                                                                0,
                                                                                insetPadding:
                                                                                EdgeInsets.zero,
                                                                                backgroundColor:
                                                                                Colors.transparent,
                                                                                alignment:
                                                                                AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                child:
                                                                                GestureDetector(
                                                                                  onTap: () {
                                                                                    FocusScope.of(dialogContext).unfocus();
                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                  },
                                                                                  child: Container(
                                                                                    height: 300.0,
                                                                                    width: 300.0,
                                                                                    child: FollowUpTaskComponentWidget(
                                                                                      tasks: tasksWithDogsAndUsersV2Item,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          );
                                                                        }
                                                                      },
                                                                      child:
                                                                      Container(
                                                                        width:
                                                                        314.6,
                                                                        height:
                                                                        265.3,
                                                                        decoration:
                                                                        BoxDecoration(
                                                                          color: Colors
                                                                              .white,
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              blurRadius:
                                                                              4.0,
                                                                              color:
                                                                              Color(0x33000000),
                                                                              offset:
                                                                              Offset(
                                                                                0.0,
                                                                                2.0,
                                                                              ),
                                                                            )
                                                                          ],
                                                                          borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                          border:
                                                                          Border
                                                                              .all(
                                                                            color: Color(
                                                                                0x0014181B),
                                                                          ),
                                                                        ),
                                                                        child:
                                                                        Padding(
                                                                          padding:
                                                                          EdgeInsets.all(
                                                                              8.0),
                                                                          child:
                                                                          SingleChildScrollView(
                                                                            child:
                                                                            Column(
                                                                              mainAxisSize:
                                                                              MainAxisSize.max,
                                                                              children:
                                                                              [
                                                                                Container(
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(16.0),
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                  child: Text(
                                                                                    'Tasks: ${valueOrDefault<String>(
                                                                                      tasksWithDogsAndUsersV2Item.taskTitle,
                                                                                      '-',
                                                                                    )}',
                                                                                    textAlign: TextAlign.start,
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                  child: Text(
                                                                                    'Description: ${valueOrDefault<String>(
                                                                                      tasksWithDogsAndUsersV2Item.taskDescription,
                                                                                      '-',
                                                                                    )}',
                                                                                    textAlign: TextAlign.start,
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Container(
                                                                                      decoration: BoxDecoration(
                                                                                        borderRadius: BorderRadius.circular(16.0),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                        child: Text(
                                                                                          valueOrDefault<String>(
                                                                                            tasksWithDogsAndUsersV2Item.status == 'Completed'
                                                                                                ? valueOrDefault<String>(
                                                                                              tasksWithDogsAndUsersV2Item.dateCompleted,
                                                                                              '-',
                                                                                            )
                                                                                                : valueOrDefault<String>(
                                                                                              tasksWithDogsAndUsersV2Item.dateCreated,
                                                                                              '-',
                                                                                            ),
                                                                                            '-',
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: FlutterFlowTheme.of(context).success,
                                                                                            fontSize: 12.0,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(1.0, 0.0),
                                                                                  child: Container(
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0xFF249689),
                                                                                      borderRadius: BorderRadius.circular(16.0),
                                                                                      border: Border.all(
                                                                                        color: FlutterFlowTheme.of(context).success,
                                                                                      ),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                      child: Text(
                                                                                        valueOrDefault<String>(
                                                                                          tasksWithDogsAndUsersV2Item.status,
                                                                                          '-',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          color: Colors.white,
                                                                                          fontSize: 12.0,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(1.0, 0.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                    child: RichText(
                                                                                      textScaler: MediaQuery.of(context).textScaler,
                                                                                      text: TextSpan(
                                                                                        children: [
                                                                                          TextSpan(
                                                                                            text: 'Last Follow Up: ',
                                                                                            style: TextStyle(
                                                                                              fontWeight: FontWeight.w600,
                                                                                              fontSize: 12.0,
                                                                                            ),
                                                                                          ),
                                                                                          TextSpan(
                                                                                            text: valueOrDefault<String>(
                                                                                              tasksWithDogsAndUsersV2Item.lastFollowUpAt,
                                                                                              '-',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: Color(0xFFFD8205),
                                                                                              fontSize: 12.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey('Plus Jakarta Sans'),
                                                                                            ),
                                                                                          )
                                                                                        ],
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          color: Color(0xFF101213),
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey('Plus Jakarta Sans'),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                  children: [
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(1.0, 0.0),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                        child: RichText(
                                                                                          textScaler: MediaQuery.of(context).textScaler,
                                                                                          text: TextSpan(
                                                                                            children: [
                                                                                              TextSpan(
                                                                                                text: 'Assigned from: ',
                                                                                                style: TextStyle(
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  fontSize: 12.0,
                                                                                                ),
                                                                                              ),
                                                                                              TextSpan(
                                                                                                text: valueOrDefault<String>(
                                                                                                  tasksWithDogsAndUsersV2Item.assignedByUser.userFullname,
                                                                                                  '-',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  color: Color(0xFFFD8205),
                                                                                                  fontSize: 12.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey('Plus Jakarta Sans'),
                                                                                                ),
                                                                                              )
                                                                                            ],
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: Color(0xFF101213),
                                                                                              fontSize: 14.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey('Plus Jakarta Sans'),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                  children: [
                                                                                    Container(
                                                                                      decoration: BoxDecoration(
                                                                                        borderRadius: BorderRadius.circular(16.0),
                                                                                        border: Border.all(
                                                                                          color: Color(0xFFFD8205),
                                                                                          width: 1.0,
                                                                                        ),
                                                                                      ),
                                                                                      child:
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                        child: RichText(
                                                                                          textScaler: MediaQuery.of(context).textScaler,
                                                                                          text: TextSpan(
                                                                                            children: [
                                                                                              TextSpan(
                                                                                                text: 'Assigned to: ',
                                                                                                style: TextStyle(
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  fontSize: 12.0,
                                                                                                ),
                                                                                              ),
                                                                                              TextSpan(
                                                                                                text: valueOrDefault<String>(
                                                                                                  tasksWithDogsAndUsersV2Item.assignedToUser.userFullname,
                                                                                                  '-',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  color: Color(0xFFFD8205),
                                                                                                  fontSize: 12.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey('Plus Jakarta Sans'),
                                                                                                ),
                                                                                              )
                                                                                            ],
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: Color(0xFF101213),
                                                                                              fontSize: 14.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey('Plus Jakarta Sans'),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ].divide(SizedBox(height: 10.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                          FutureBuilder<ApiCallResponse>(
                                            future: GetTasksWithDogsCall.call(
                                              accessToken:
                                              FFAppState().accessToken,
                                            ),
                                            builder: (context, snapshot) {
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                    CircularProgressIndicator(
                                                      valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              final listViewGetTasksWithDogsResponse =
                                              snapshot.data!;

                                              return Builder(
                                                builder: (context) {
                                                  var allTasks = (listViewGetTasksWithDogsResponse
                                                      .jsonBody
                                                      .toList()
                                                      .map<TasksWithDogStruct?>(
                                                      TasksWithDogStruct.maybeFromMap)
                                                      .toList()
                                                  as Iterable<TasksWithDogStruct?>)
                                                      .withoutNulls;

                                                  final filteredCompletedTasks = allTasks
                                                      .where((task) => task.status == 'Completed')
                                                      .where((task) {
                                                    if (_searchQuery.isEmpty) {
                                                      return true;
                                                    }
                                                    final query = _searchQuery.toLowerCase();
                                                    return (task.taskTitle?.toLowerCase().contains(query) ?? false) ||
                                                        (task.taskDescription?.toLowerCase().contains(query) ?? false) ||
                                                        (task.dog.dogName?.toLowerCase().contains(query) ?? false) ||                                                        (task.assignedToUser.userFullname?.toLowerCase().contains(query) ?? false) ||
                                                        (task.assignedByUser.userFullname?.toLowerCase().contains(query) ?? false);
                                                  })
                                                      .toList();


                                                  final tasksWithDogsAndUsersV2 = filteredCompletedTasks;

                                                  if (tasksWithDogsAndUsersV2.isEmpty && _searchQuery.isNotEmpty) {
                                                    return Center(child: Text('No tasks found for "$_searchQuery"'));
                                                  } else if (tasksWithDogsAndUsersV2.isEmpty) {
                                                    return Center(child: Text('No completed tasks.'));
                                                  }

                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                    Axis.vertical,
                                                    itemCount:
                                                    tasksWithDogsAndUsersV2
                                                        .length,
                                                    itemBuilder: (context,
                                                        tasksWithDogsAndUsersV2Index) {
                                                      final tasksWithDogsAndUsersV2Item =
                                                      tasksWithDogsAndUsersV2[
                                                      tasksWithDogsAndUsersV2Index];
                                                      return SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            if ((FFAppState()
                                                                .usertype ==
                                                                'Admin') ||
                                                                (FFAppState()
                                                                    .usertype ==
                                                                    'Owner'))
                                                              Align(
                                                                alignment:
                                                                AlignmentDirectional(
                                                                    1.0,
                                                                    0.0),
                                                                child: Builder(
                                                                  builder:
                                                                      (context) =>
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional
                                                                            .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            30.0,
                                                                            0.0),
                                                                        child:
                                                                        InkWell(
                                                                          splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                          focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                          hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                          highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                          onTap:
                                                                              () async {
                                                                            _model.apiResult62osdasda =
                                                                            await DeleteTaskByIDCall.call(
                                                                              id: tasksWithDogsAndUsersV2Item
                                                                                  .id,
                                                                              accessToken:
                                                                              FFAppState().accessToken,
                                                                            );

                                                                            await showDialog(
                                                                              context:
                                                                              context,
                                                                              builder:
                                                                                  (dialogContext) {
                                                                                return Dialog(
                                                                                  elevation: 0,
                                                                                  insetPadding: EdgeInsets.zero,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                  child: GestureDetector(
                                                                                    onTap: () {
                                                                                      FocusScope.of(dialogContext).unfocus();
                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                    },
                                                                                    child: SuccessComponentWidget(),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            );

                                                                            safeSetState(
                                                                                    () {});
                                                                          },
                                                                          child:
                                                                          Icon(
                                                                            Icons
                                                                                .delete,
                                                                            color: FlutterFlowTheme.of(context)
                                                                                .error,
                                                                            size:
                                                                            20.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                ),
                                                              ),
                                                            Builder(
                                                              builder:
                                                                  (context) =>
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        20.0,
                                                                        20.0,
                                                                        20.0,
                                                                        0.0),
                                                                    child: InkWell(
                                                                      splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                      focusColor: Colors
                                                                          .transparent,
                                                                      hoverColor: Colors
                                                                          .transparent,
                                                                      highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        if (FFAppState()
                                                                            .usertype ==
                                                                            'Caretaker') {
                                                                          await showDialog(
                                                                            context:
                                                                            context,
                                                                            builder:
                                                                                (dialogContext) {
                                                                              return Dialog(
                                                                                elevation:
                                                                                0,
                                                                                insetPadding:
                                                                                EdgeInsets.zero,
                                                                                backgroundColor:
                                                                                Colors.transparent,
                                                                                alignment:
                                                                                AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                child:
                                                                                GestureDetector(
                                                                                  onTap: () {
                                                                                    FocusScope.of(dialogContext).unfocus();
                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                  },
                                                                                  child: PopUpTaskComponentWidget(
                                                                                    tasks: tasksWithDogsAndUsersV2Item,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          );
                                                                        } else {
                                                                          await showDialog(
                                                                            context:
                                                                            context,
                                                                            builder:
                                                                                (dialogContext) {
                                                                              return Dialog(
                                                                                elevation:
                                                                                0,
                                                                                insetPadding:
                                                                                EdgeInsets.zero,
                                                                                backgroundColor:
                                                                                Colors.transparent,
                                                                                alignment:
                                                                                AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                child:
                                                                                GestureDetector(
                                                                                  onTap: () {
                                                                                    FocusScope.of(dialogContext).unfocus();
                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                  },
                                                                                  child: FollowUpTaskComponentWidget(
                                                                                    tasks: tasksWithDogsAndUsersV2Item,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          );
                                                                        }
                                                                      },
                                                                      child:
                                                                      Container(
                                                                        width:
                                                                        314.6,
                                                                        height:
                                                                        187.4,
                                                                        decoration:
                                                                        BoxDecoration(
                                                                          color: Colors
                                                                              .white,
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              blurRadius:
                                                                              4.0,
                                                                              color:
                                                                              Color(0x33000000),
                                                                              offset:
                                                                              Offset(
                                                                                0.0,
                                                                                2.0,
                                                                              ),
                                                                            )
                                                                          ],
                                                                          borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                          border:
                                                                          Border
                                                                              .all(
                                                                            color: Color(
                                                                                0x0014181B),
                                                                          ),
                                                                        ),
                                                                        child:
                                                                        Padding(
                                                                          padding:
                                                                          EdgeInsets.all(
                                                                              8.0),
                                                                          child:
                                                                          SingleChildScrollView(
                                                                            child:
                                                                            Column(
                                                                              mainAxisSize:
                                                                              MainAxisSize.max,
                                                                              children:
                                                                              [
                                                                                Container(
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(16.0),
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                  child: Text(
                                                                                    'Tasks: ${valueOrDefault<String>(
                                                                                      tasksWithDogsAndUsersV2Item.taskTitle,
                                                                                      '-',
                                                                                    )}',
                                                                                    textAlign: TextAlign.start,
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                  child: Text(
                                                                                    'Description: ${valueOrDefault<String>(
                                                                                      tasksWithDogsAndUsersV2Item.taskDescription,
                                                                                      '-',
                                                                                    )}',
                                                                                    textAlign: TextAlign.start,
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Container(
                                                                                      decoration: BoxDecoration(
                                                                                        borderRadius: BorderRadius.circular(16.0),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                        child: Text(
                                                                                          valueOrDefault<String>(
                                                                                            tasksWithDogsAndUsersV2Item.status == 'Completed'
                                                                                                ? valueOrDefault<String>(
                                                                                              tasksWithDogsAndUsersV2Item.dateCompleted,
                                                                                              '-',
                                                                                            )
                                                                                                : valueOrDefault<String>(
                                                                                              tasksWithDogsAndUsersV2Item.dateCreated,
                                                                                              '-',
                                                                                            ),
                                                                                            '-',
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: FlutterFlowTheme.of(context).success,
                                                                                            fontSize: 12.0,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(1.0, 0.0),
                                                                                  child: Container(
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0xFF249689),
                                                                                      borderRadius: BorderRadius.circular(16.0),
                                                                                      border: Border.all(
                                                                                        color: FlutterFlowTheme.of(context).success,
                                                                                      ),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                      child: Text(
                                                                                        valueOrDefault<String>(
                                                                                          tasksWithDogsAndUsersV2Item.status,
                                                                                          '-',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          color: Colors.white,
                                                                                          fontSize: 12.0,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(1.0, 0.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                    child: RichText(
                                                                                      textScaler: MediaQuery.of(context).textScaler,
                                                                                      text: TextSpan(
                                                                                        children: [
                                                                                          TextSpan(
                                                                                            text: 'Completed: ',
                                                                                            style: TextStyle(
                                                                                              fontWeight: FontWeight.w600,
                                                                                              fontSize: 12.0,
                                                                                            ),
                                                                                          ),
                                                                                          TextSpan(
                                                                                            text: valueOrDefault<String>(
                                                                                              tasksWithDogsAndUsersV2Item.dateCompleted,
                                                                                              '-',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: Color(0xFFFD8205),
                                                                                              fontSize: 12.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey('Plus Jakarta Sans'),
                                                                                            ),
                                                                                          )
                                                                                        ],
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          color: Color(0xFF101213),
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey('Plus Jakarta Sans'),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                  children: [
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(1.0, 0.0),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                        child: RichText(
                                                                                          textScaler: MediaQuery.of(context).textScaler,
                                                                                          text: TextSpan(
                                                                                            children: [
                                                                                              TextSpan(
                                                                                                text: 'Assigned from: ',
                                                                                                style: TextStyle(
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  fontSize: 12.0,
                                                                                                ),
                                                                                              ),
                                                                                              TextSpan(
                                                                                                text: valueOrDefault<String>(
                                                                                                  tasksWithDogsAndUsersV2Item.assignedByUser.userFullname,
                                                                                                  '-',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  color: Color(0xFFFD8205),
                                                                                                  fontSize: 12.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey('Plus Jakarta Sans'),
                                                                                                ),
                                                                                              )
                                                                                            ],
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: Color(0xFF101213),
                                                                                              fontSize: 14.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey('Plus Jakarta Sans'),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                  children: [
                                                                                    Container(
                                                                                      decoration: BoxDecoration(
                                                                                        borderRadius: BorderRadius.circular(16.0),
                                                                                        border: Border.all(
                                                                                          color: Color(0xFFFD8205),
                                                                                          width: 1.0,
                                                                                        ),
                                                                                      ),
                                                                                      child:
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                        child: RichText(
                                                                                          textScaler: MediaQuery.of(context).textScaler,
                                                                                          text: TextSpan(
                                                                                            children: [
                                                                                              TextSpan(
                                                                                                text: 'Assigned to: ',
                                                                                                style: TextStyle(
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  fontSize: 12.0,
                                                                                                ),
                                                                                              ),
                                                                                              TextSpan(
                                                                                                text: valueOrDefault<String>(
                                                                                                  tasksWithDogsAndUsersV2Item.assignedToUser.userFullname,
                                                                                                  '-',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  color: Color(0xFFFD8205),
                                                                                                  fontSize: 12.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey('Plus Jakarta Sans'),
                                                                                                ),
                                                                                              )
                                                                                            ],
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: Color(0xFF101213),
                                                                                              fontSize: 14.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey('Plus Jakarta Sans'),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ].divide(SizedBox(height: 10.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: wrapWithModel(
                          model: _model.bottomNavigationBarModel,
                          updateCallback: () => safeSetState(() {}),
                          child: BottomNavigationBarWidget(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}