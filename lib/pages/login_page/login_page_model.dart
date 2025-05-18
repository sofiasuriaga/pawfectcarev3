import '/backend/api_requests/api_calls.dart';
import '/components/invalid_credentials_component/invalid_credentials_component_widget.dart';
import '/components/user_is_not_active_component/user_is_not_active_component_widget.dart';
import '/components/user_not_authenticated_component/user_not_authenticated_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  Local state fields for this page.

  bool isLoginInvalid = false;

  bool isUserNotAuthenticated = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for InvalidCredentialsComponent component.
  late InvalidCredentialsComponentModel invalidCredentialsComponentModel;
  // Model for UserNotAuthenticatedComponent component.
  late UserNotAuthenticatedComponentModel userNotAuthenticatedComponentModel;
  // Model for userIsNotActiveComponent component.
  late UserIsNotActiveComponentModel userIsNotActiveComponentModel;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  String? _emailAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Login)] action in Button widget.
  ApiCallResponse? apiResultdgh;
  // Stores action output result for [Backend Call - API (getUsers)] action in Button widget.
  ApiCallResponse? api;

  @override
  void initState(BuildContext context) {
    invalidCredentialsComponentModel =
        createModel(context, () => InvalidCredentialsComponentModel());
    userNotAuthenticatedComponentModel =
        createModel(context, () => UserNotAuthenticatedComponentModel());
    userIsNotActiveComponentModel =
        createModel(context, () => UserIsNotActiveComponentModel());
    emailAddressTextControllerValidator = _emailAddressTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
  }

  @override
  void dispose() {
    invalidCredentialsComponentModel.dispose();
    userNotAuthenticatedComponentModel.dispose();
    userIsNotActiveComponentModel.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
