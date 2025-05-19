import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/success_component/success_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'follow_up_task_component_model.dart';
export 'follow_up_task_component_model.dart';

import '/backend/supabase/supabase.dart';

class FollowUpTaskComponentWidget extends StatefulWidget {
  const FollowUpTaskComponentWidget({
    super.key,
    required this.tasks,
  });

  final TasksWithDogStruct? tasks;

  @override
  State<FollowUpTaskComponentWidget> createState() =>
      _FollowUpTaskComponentWidgetState();
}

class _FollowUpTaskComponentWidgetState
    extends State<FollowUpTaskComponentWidget> {
  late FollowUpTaskComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FollowUpTaskComponentModel());
    _model.isFollowUpClicked = false;
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
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
        child: Container(
          width: 419.76,
          height: 277.8,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Text(
                          'Tasks: ${widget.tasks?.taskTitle ?? '-'}',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Text(
                          'Description: ${widget.tasks?.taskDescription ?? '-'}',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                              child: Text(
                                valueOrDefault<String>(
                                  widget.tasks?.status == 'Completed'
                                      ? widget.tasks?.dateCompleted
                                      : widget.tasks?.dateCreated,
                                  '-',
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                  color: FlutterFlowTheme.of(context).success,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(text: 'Assigned from: ', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.0)),
                                    TextSpan(
                                      text: valueOrDefault<String>(widget.tasks?.assignedByUser?.userFullname, '-'),
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Color(0xFFFD8205),
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: GoogleFonts.asMap().containsKey('Plus Jakarta Sans'),
                                      ),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF101213),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap().containsKey('Plus Jakarta Sans'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF249689),
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(color: FlutterFlowTheme.of(context).success),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                              child: Text(
                                valueOrDefault<String>(widget.tasks?.status, '-'),
                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(color: Color(0xFFFD8205), width: 1.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(text: 'Assigned to: ', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.0)),
                                    TextSpan(
                                      text: valueOrDefault<String>(widget.tasks?.assignedToUser?.userFullname, '-'),
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Color(0xFFFD8205),
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: GoogleFonts.asMap().containsKey('Plus Jakarta Sans'),
                                      ),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF101213),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap().containsKey('Plus Jakarta Sans'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ].divide(SizedBox(height: 10.0)),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      if (!(_model.isFollowUpClicked ?? false))
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              setState(() {
                                _model.isFollowUpClicked = true;
                              });
                            },
                            text: 'Follow Up',
                            icon: Icon(Icons.check_sharp, size: 15.0, color: Colors.white),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                              iconAlignment: IconAlignment.end,
                              iconPadding: EdgeInsets.zero,
                              color: FlutterFlowTheme.of(context).success,
                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                color: Colors.white,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                              ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      if (_model.isFollowUpClicked ?? false)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              _model.apiResult0i9 = await TasksFollowUpTriggerCall.call(
                                id: widget.tasks?.id,
                                lastFollowUpAt: functions.getFormattedDateTime(),
                                accessToken: FFAppState().accessToken,
                              );

                              if (_model.apiResult0i9?.succeeded ?? false) {
                                print('✅ TasksFollowUpTriggerCall successful for task ID: ${widget.tasks?.id}');

                                String? recipientUserId = widget.tasks?.assignedToUser?.id; // Notify the person task is assigned TO
                                // Or, if you want to notify the person who CREATED the task:
                                // String? recipientUserId = widget.tasks?.assignedByUser?.id;

                                String? taskTitle = widget.tasks?.taskTitle;
                                String? currentUserName = FFAppState().userName;

                                if (recipientUserId != null &&
                                    recipientUserId.isNotEmpty &&
                                    widget.tasks?.id != null &&
                                    taskTitle != null &&
                                    taskTitle.isNotEmpty &&
                                    currentUserName.isNotEmpty) {

                                  final Map<String, dynamic> payloadForFunction = {
                                    'type': 'FOLLOW_UP',
                                    'taskId': widget.tasks!.id,
                                    'taskTitle': taskTitle,
                                    'recipientUserId': recipientUserId,
                                    'followedUpByUserName': currentUserName,
                                  };

                                  print('🚀 Payload being sent to Edge Function for FOLLOW_UP: ${payloadForFunction.toString()}');

                                  try {
                                    final functionResponse = await Supabase.instance.client.functions.invoke(
                                      'send-notifications',
                                      body: payloadForFunction,
                                    );
                                    print('✅ Follow-up Edge Function Invocation Attempted. Status: ${functionResponse.status}, Data: ${functionResponse.data}');
                                    if (functionResponse.status != 200) {
                                      print('⚠️ Edge function did not return 200. Response: ${functionResponse.data}');
                                    }
                                  } catch (e) {
                                    print('❌ Failed to invoke follow-up edge function: $e');
                                  }
                                } else {
                                  print('⚠️ Cannot send follow-up notification due to missing data for payload.');
                                  print('Recipient User ID: $recipientUserId');
                                  print('Task ID: ${widget.tasks?.id}');
                                  print('Task Title: $taskTitle');
                                  print('Current User Name: $currentUserName');
                                }
                              } else {
                                print('❌ TasksFollowUpTriggerCall failed.');
                              }

                              Navigator.pop(context);
                              await showDialog(
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                    child: SuccessComponentWidget(),
                                  );
                                },
                              );
                              safeSetState(() {});
                            },
                            text: 'Are you sure',
                            icon: Icon(Icons.question_mark, size: 15.0, color: Colors.white),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                              iconAlignment: IconAlignment.end,
                              iconPadding: EdgeInsets.zero,
                              color: FlutterFlowTheme.of(context).warning,
                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                color: Colors.white,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                              ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                          text: 'Cancel',
                          icon: Icon(Icons.close_rounded, size: 15.0, color: Colors.white),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                            iconAlignment: IconAlignment.end,
                            iconPadding: EdgeInsets.zero,
                            color: FlutterFlowTheme.of(context).error,
                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                              color: Colors.white,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                            ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}