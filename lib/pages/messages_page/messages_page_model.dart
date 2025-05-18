import '/backend/supabase/supabase.dart';
import '/components/bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'messages_page_widget.dart' show MessagesPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MessagesPageModel extends FlutterFlowModel<MessagesPageWidget> {
  ///  State fields for stateful widgets in this page.

  Stream<List<ConversationsRow>>? listViewSupabaseStream;
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
