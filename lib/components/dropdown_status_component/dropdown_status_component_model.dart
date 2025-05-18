import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/success_component/success_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dropdown_status_component_widget.dart'
    show DropdownStatusComponentWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DropdownStatusComponentModel
    extends FlutterFlowModel<DropdownStatusComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (updateUserStatus)] action in DropDown widget.
  ApiCallResponse? apiResultrecddd;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
