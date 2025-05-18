import '/backend/supabase/supabase.dart';
import '/components/image_full_view/image_full_view_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'add_photo_in_album_component_widget.dart'
    show AddPhotoInAlbumComponentWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddPhotoInAlbumComponentModel
    extends FlutterFlowModel<AddPhotoInAlbumComponentWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  PhotosRow? apiResultdaz;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
