import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/add_new_doggo_component/add_new_doggo_component_widget.dart';
import '/components/bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import '/components/delete_dog_component_widget.dart';
import '/components/view_doggo_profile_component/view_doggo_profile_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'dog_profiles_page_widget.dart' show DogProfilesPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DogProfilesPageModel extends FlutterFlowModel<DogProfilesPageWidget> {
  ///  Local state fields for this page.

  DogRecipeStruct? dogRecipe;
  void updateDogRecipeStruct(Function(DogRecipeStruct) updateFn) {
    updateFn(dogRecipe ??= DogRecipeStruct());
  }

  ///  State fields for stateful widgets in this page.

  // State field(s) for searchDoggos widget.
  FocusNode? searchDoggosFocusNode;
  TextEditingController? searchDoggosTextController;
  String? Function(BuildContext, String?)? searchDoggosTextControllerValidator;
  // Model for BottomNavigationBar component.
  late BottomNavigationBarModel bottomNavigationBarModel;

  @override
  void initState(BuildContext context) {
    bottomNavigationBarModel =
        createModel(context, () => BottomNavigationBarModel());
  }

  @override
  void dispose() {
    searchDoggosFocusNode?.dispose();
    searchDoggosTextController?.dispose();

    bottomNavigationBarModel.dispose();
  }
}
