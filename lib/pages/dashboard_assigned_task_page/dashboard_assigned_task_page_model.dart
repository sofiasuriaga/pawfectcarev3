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
import 'dashboard_assigned_task_page_widget.dart'
    show DashboardAssignedTaskPageWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardAssignedTaskPageModel
    extends FlutterFlowModel<DashboardAssignedTaskPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getTasksWithDogs)] action in DashboardAssignedTaskPage widget.
  ApiCallResponse? apiResult464;
  // Stores action output result for [Backend Call - API (getUsers)] action in DashboardAssignedTaskPage widget.
  ApiCallResponse? getUsersResponse;
  // Stores action output result for [Backend Call - API (getDogs)] action in DashboardAssignedTaskPage widget.
  ApiCallResponse? getDogsRespons;
  // Stores action output result for [Backend Call - API (logout)] action in Icon widget.
  ApiCallResponse? apiResulttcc;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Stores action output result for [Backend Call - API (DeleteTaskByID)] action in Icon widget.
  ApiCallResponse? apiResult62osdasda;
  // Model for BottomNavigationBar component.
  late BottomNavigationBarModel bottomNavigationBarModel;

  @override
  void initState(BuildContext context) {
    bottomNavigationBarModel =
        createModel(context, () => BottomNavigationBarModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    bottomNavigationBarModel.dispose();
  }
}
