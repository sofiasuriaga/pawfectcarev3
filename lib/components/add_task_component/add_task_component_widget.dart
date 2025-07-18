import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_task_component_model.dart';
export 'add_task_component_model.dart';

class AddTaskComponentWidget extends StatefulWidget {
  const AddTaskComponentWidget({super.key});

  @override
  State<AddTaskComponentWidget> createState() => _AddTaskComponentWidgetState();
}

class _AddTaskComponentWidgetState extends State<AddTaskComponentWidget> {
  late AddTaskComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddTaskComponentModel());

    _model.emailAddressTextController1 ??= TextEditingController();
    _model.emailAddressFocusNode1 ??= FocusNode();

    _model.emailAddressTextController2 ??= TextEditingController();
    _model.emailAddressFocusNode2 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      children: [
        Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 20.0),
            child: Container(
              width: double.infinity,
              height: 500.29,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 60.0, 20.0, 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  _model.isAllUsers = true;
                                  safeSetState(() {});
                                },
                                text: 'Assign to all',
                                options: FFButtonOptions(
                                  height: 30.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconAlignment: IconAlignment.end,
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).error,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleSmallFamily,
                                    color: Colors.white,
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                        FlutterFlowTheme.of(context)
                                            .titleSmallFamily),
                                  ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              if (_model.isAllUsers)
                                Icon(
                                  Icons.check_circle,
                                  color: FlutterFlowTheme.of(context).success,
                                  size: 30.0,
                                ),
                            ].divide(SizedBox(width: 5.0)),
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: FutureBuilder<List<UsersRow>>(
                          future: UsersTable().queryRows(
                            queryFn: (q) => q,
                          ),
                          builder: (context, snapshot) {
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<UsersRow> dropDownUsersRowList =
                            snapshot.data!;
                            return FlutterFlowDropDown<String>(
                              controller: _model.dropDownValueController ??=
                                  FormFieldController<String>(
                                    _model.dropDownValue ??= 'Option 1',
                                  ),
                              options: List<String>.from(dropDownUsersRowList
                                  .map((e) => e.id)
                                  .toList()),
                              optionLabels: dropDownUsersRowList
                                  .map((e) => e.userFullname)
                                  .withoutNulls
                                  .toList(),
                              onChanged: (val) => safeSetState(
                                      () => _model.dropDownValue = val),
                              width: 414.88,
                              height: 40.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: Color(0xFF101213),
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: GoogleFonts.asMap()
                                    .containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                              hintText: 'Assigned To',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: Color(0xFFF1F4F8),
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: false,
                              isSearchable: false,
                              isMultiSelect: false,
                            );
                          },
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: TextFormField(
                          controller: _model.emailAddressTextController1,
                          focusNode: _model.emailAddressFocusNode1,
                          autofocus: true,
                          autofillHints: [AutofillHints.email],
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .labelLargeFamily,
                              color: Color(0xFF57636C),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: GoogleFonts.asMap()
                                  .containsKey(
                                  FlutterFlowTheme.of(context)
                                      .labelLargeFamily),
                            ),
                            hintText: 'Title',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFF1F4F8),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF4B39EF),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFE0E3E7),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFE0E3E7),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            filled: true,
                            fillColor: Color(0xFFF1F4F8),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                            fontFamily: FlutterFlowTheme.of(context)
                                .bodyLargeFamily,
                            color: Color(0xFF101213),
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context)
                                    .bodyLargeFamily),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: _model.emailAddressTextController1Validator
                              .asValidator(context),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: TextFormField(
                          controller: _model.emailAddressTextController2,
                          focusNode: _model.emailAddressFocusNode2,
                          autofocus: true,
                          autofillHints: [AutofillHints.email],
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Enter Description',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFF1F4F8),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF4B39EF),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFE0E3E7),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFE0E3E7),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            filled: true,
                            fillColor: Color(0xFFF1F4F8),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                            fontFamily: FlutterFlowTheme.of(context)
                                .bodyLargeFamily,
                            color: Color(0xFF101213),
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context)
                                    .bodyLargeFamily),
                          ),
                          maxLines: 5,
                          keyboardType: TextInputType.emailAddress,
                          validator: _model.emailAddressTextController2Validator
                              .asValidator(context),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                            text: 'Cancel',
                            icon: Icon(
                              Icons.close,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconAlignment: IconAlignment.end,
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).error,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: Colors.white,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                useGoogleFonts: GoogleFonts.asMap()
                                    .containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleSmallFamily),
                              ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              String? assignedToValue;
                              if (_model.isAllUsers) {
                                assignedToValue = null;
                              } else {
                                if (_model.dropDownValue == null || _model.dropDownValue == 'Option 1') {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Please select a user to assign the task to, or select "Assign to all".')),
                                  );
                                  return;
                                }
                                assignedToValue = _model.dropDownValue;
                              }

                              print('AddTaskComponentWidget: FFAppState().userid before task insert is: ${FFAppState().userid}');

                              final response = await Supabase.instance.client
                                  .from('tasks')
                                  .insert({
                                'task_title': _model.emailAddressTextController1.text,
                                'assigned_to': assignedToValue,
                                'assigned_by': FFAppState().userid,
                                'task_description': _model.emailAddressTextController2.text,
                                'status': 'Active',
                                'all_users': _model.isAllUsers,
                                'date_created': functions.getFormattedDateTime(),
                              })
                                  .select()
                                  .single();

                              print('Task inserted with response: $response');

                              Map<String, dynamic> functionRecordPayload = {
                                'id': response['id'],
                                'task_title': response['task_title'],
                                'assigned_to': response['assigned_to'],
                                'assigned_by': response['assigned_by'],
                                'task_description': response['task_description'],
                                'date_created': response['date_created'],
                              };

                              print('Payload for Edge Function: ${functionRecordPayload.toString()}');

                              try {
                                final functionResponse = await Supabase.instance.client.functions.invoke(
                                    'send-notifications',
                                    body: {
                                      'type': 'INSERT',
                                      'table': 'tasks',
                                      'record': functionRecordPayload
                                    }
                                );
                                print('Edge Function Invocation Attempted.');
                                print('Edge Function Raw Response Data: ${functionResponse.data}');
                              } catch (e) {
                                print('Failed to invoke edge function: $e');
                                print('Error Type: ${e.runtimeType.toString()}');
                              }

                              Navigator.pop(context);
                              safeSetState(() {});
                            },
                            text: 'Confirm',
                            icon: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconAlignment: IconAlignment.end,
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).success,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: Colors.white,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                useGoogleFonts: GoogleFonts.asMap()
                                    .containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleSmallFamily),
                              ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          )
                        ],
                      ),
                    ].divide(SizedBox(height: 20.0)),
                  ),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(-0.01, -0.93),
          child: Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).success,
              borderRadius: BorderRadius.circular(180.0),
            ),
            child: Icon(
              Icons.note_alt_outlined,
              color: FlutterFlowTheme.of(context).secondaryBackground,
              size: 40.0,
            ),
          ),
        ),
      ],
    );
  }
}
