import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/success_component/success_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dropdown_status_component_model.dart';
export 'dropdown_status_component_model.dart';

class DropdownStatusComponentWidget extends StatefulWidget {
  const DropdownStatusComponentWidget({
    super.key,
    required this.users,
  });

  final UsersRow? users;

  @override
  State<DropdownStatusComponentWidget> createState() =>
      _DropdownStatusComponentWidgetState();
}

class _DropdownStatusComponentWidgetState
    extends State<DropdownStatusComponentWidget> {
  late DropdownStatusComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DropdownStatusComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(1.0, 0.0),
      child: Container(
        decoration: BoxDecoration(),
        child: Builder(
          builder: (context) => FlutterFlowDropDown<String>(
            controller: _model.dropDownValueController ??=
                FormFieldController<String>(
              _model.dropDownValue ??= valueOrDefault<String>(
                widget!.users?.userStatus,
                '-',
              ),
            ),
            options: ['Active', 'Inactive'],
            onChanged: (val) async {
              safeSetState(() => _model.dropDownValue = val);
              _model.apiResultrecddd = await UpdateUserStatusCall.call(
                userStatus: _model.dropDownValue,
                id: widget!.users?.id,
                accessToken: FFAppState().accessToken,
              );

              await showDialog(
                context: context,
                builder: (dialogContext) {
                  return Dialog(
                    elevation: 0,
                    insetPadding: EdgeInsets.zero,
                    backgroundColor: Colors.transparent,
                    alignment: AlignmentDirectional(0.0, 0.0)
                        .resolve(Directionality.of(context)),
                    child: SuccessComponentWidget(),
                  );
                },
              );

              safeSetState(() {});
            },
            width: 109.1,
            height: 40.0,
            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Color(0xFF1F2326),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
            hintText: 'Status',
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
            fillColor: Color(0xFFF1F4F8),
            elevation: 2.0,
            borderColor: Colors.transparent,
            borderWidth: 0.0,
            borderRadius: 8.0,
            margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
            hidesUnderline: true,
            isOverButton: false,
            isSearchable: false,
            isMultiSelect: false,
          ),
        ),
      ),
    );
  }
}
