import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/success_component/success_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'follow_up_task_component_widget.dart' show FollowUpTaskComponentWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FollowUpTaskComponentModel
    extends FlutterFlowModel<FollowUpTaskComponentWidget> {
  ///  Local state fields for this component.

  bool? isFollowUpClicked = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (tasksFollowUpTrigger)] action in Button widget.
  ApiCallResponse? apiResult0i9;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
