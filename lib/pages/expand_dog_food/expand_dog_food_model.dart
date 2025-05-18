import '/backend/supabase/supabase.dart';
import '/components/add_dog_food_component/add_dog_food_component_widget.dart';
import '/components/bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import '/components/delete_dog_food_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'expand_dog_food_widget.dart' show ExpandDogFoodWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExpandDogFoodModel extends FlutterFlowModel<ExpandDogFoodWidget> {
  ///  State fields for stateful widgets in this page.

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
