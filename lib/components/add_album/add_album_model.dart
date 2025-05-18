import '/backend/supabase/supabase.dart';
import '/components/success_component/success_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'add_album_widget.dart' show AddAlbumWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddAlbumModel extends FlutterFlowModel<AddAlbumWidget> {
  ///  Local state fields for this component.

  bool areYouSure = false;

  bool cofirm = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for addAlbum widget.
  FocusNode? addAlbumFocusNode;
  TextEditingController? addAlbumTextController;
  String? Function(BuildContext, String?)? addAlbumTextControllerValidator;
  String? _addAlbumTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Add Album is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    addAlbumTextControllerValidator = _addAlbumTextControllerValidator;
  }

  @override
  void dispose() {
    addAlbumFocusNode?.dispose();
    addAlbumTextController?.dispose();
  }
}
