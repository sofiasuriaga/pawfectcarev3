import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import '/components/conversation_new/conversation_new_widget.dart';
import '/components/dropdown_status_component/dropdown_status_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/backend/schema/structs/index.dart';
import 'team_page_widget.dart' show TeamPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TeamPageModel extends FlutterFlowModel<TeamPageWidget> {
  ///  State fields for stateful widgets in this page.

  Stream<List<UsersRow>>? listViewSupabaseStream;
  // Stores action output result for [Backend Call - API (getConversation)] action in Icon widget.
  ApiCallResponse? apiResult8qn;
  // Model for BottomNavigationBar component.
  late BottomNavigationBarModel bottomNavigationBarModel;

  @override
  void initState(BuildContext context) {
    bottomNavigationBarModel =
        createModel(context, () => BottomNavigationBarModel());
  }

  @override
  void dispose() {
    bottomNavigationBarModel.dispose();
  }
}
