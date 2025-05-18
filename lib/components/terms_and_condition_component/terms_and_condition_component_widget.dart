import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'terms_and_condition_component_model.dart';
export 'terms_and_condition_component_model.dart';

class TermsAndConditionComponentWidget extends StatefulWidget {
  const TermsAndConditionComponentWidget({super.key});

  @override
  State<TermsAndConditionComponentWidget> createState() =>
      _TermsAndConditionComponentWidgetState();
}

class _TermsAndConditionComponentWidgetState
    extends State<TermsAndConditionComponentWidget> {
  late TermsAndConditionComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsAndConditionComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 100.0),
      child: Container(
        width: 400.0,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x25090F13),
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(12.0),
            topRight: Radius.circular(12.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                      child: Container(
                        width: 60.0,
                        height: 4.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1F4F8),
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Terms and Conditions',
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    font: GoogleFonts.outfit(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 4.0, 0.0, 0.0),
                              child: Text(
                                'Welcome to PawfectCare',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      font: GoogleFonts.plusJakartaSans(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF57636C),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 24.0,
                  thickness: 2.0,
                  color: Color(0xFFF1F4F8),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                  child: Text(
                    'Terms and Conditions for the Pawfect Care Mobile Application\nLast updated: May 1, 2025\n\nPlease read these Terms and Conditions (“Terms”) carefully before registering for or using the Pawfect Care mobile application (“App”), operated by The Perfect Paws Organization. By ticking the boxes and tapping “Register,” you agree to be bound by these Terms and our Privacy Policy.\n\nDefinitions\nThe App refers to the Pawfect Care mobile application.\nThe Organization refers to The Perfect Paws Organization, a private dog-care entity.\n\nUser Roles\nAdministrator: Has full control over user access, settings, and data uploads.\nOwner: Can assign tasks, view and edit all dog profiles, view and edit feeding charts, upload and reference images, and participate in chat.\nCaretaker: Can view assigned tasks, view dog profiles and feeding charts, reference images, and participate in chat.\n\nUser Data\nThis includes any information you submit through the App, such as personal profile details, task records, dog profiles (including images), feeding charts, reference images (e.g., prescriptions, vaccination cards), and chat messages.\n\nEligibility & Registration\nOnly authorized Administrators, Owners, and Caretakers of The Perfect Paws Organization may register.\nYou must provide accurate, complete, and up-to-date information during registration and update it as needed.\n\nApp Functionality\nThe App is designed to support the following:\nTask Management – Caretakers can view assigned tasks, and Owners can assign and track tasks.\nCentralized Reference – Dog profiles, feeding charts, and task-related images can be stored and accessed in dedicated sections.\nAccess Control – Administrators manage user roles and access. Only Administrators and Owners can upload or edit profiles and charts.\nFeeding Chart Module – Caretakers and Owners can view and update feeding instructions.\nIn-App Communication – Text-only chat is available between Owners and Caretakers.\n\nFeature Limitations\nThe App does not support audio or video uploads.\nVoice and video calling are not available.\nOnly static images (e.g., JPG, PNG) can be uploaded for dog profiles and references.\n\nData Collection, Use & Privacy Policy Acceptance\nWe collect only the data necessary to operate the App.\nAll data processing complies with the Data Privacy Act of 2012 (RA 10173) of the Philippines.\nYour data will only be used for the App’s intended purposes and will not be shared without your explicit consent, unless required by law.\nBy using the App, you agree to our Privacy Policy and consent to the collection, use, and disclosure of your information as described.\n\nConfidentiality & Security\nUser Data is stored securely with access based on user roles.\nYou are responsible for keeping your login credentials confidential and reporting any unauthorized access immediately.\n\nUser Responsibilities\nUse the App only for legitimate organizational purposes.\nDo not upload malware or inappropriate content.\nRespect the privacy of others and do not share private messages or sensitive information outside the App.\n\nIntellectual Property\nAll content, designs, and code within the App are the exclusive property of The Perfect Paws Organization.\nYou may not reproduce, distribute, or create derivative works without written permission.\n\nLimitation of Liability\nWe make no guarantees regarding the availability, accuracy, or fitness of the App for a particular purpose.\nWe are not liable for any indirect, incidental, or consequential damages resulting from your use of the App.\n\nTermination\nYour access may be suspended or terminated if you violate these Terms.\nIf terminated, you will no longer have access to User Data, though we may retain data as required by law or policy.\n\nAmendments\nThese Terms may be updated from time to time.\nYou will be notified of material changes through the App or email. Continued use of the App after notice means you accept the changes.\n\nGoverning Law & Dispute Resolution\nThese Terms are governed by the laws of the Republic of the Philippines.\nAny disputes will be handled exclusively by the courts of Batangas City.\n\nRegistration Checklist\nBefore registering, please confirm the following:\nYou have read and agree to the Terms and Conditions.\nYou understand the Privacy Policy and your rights under RA 10173.\nYou consent to the collection, storage, and use of your data.\nYou acknowledge your role as Administrator, Owner, or Caretaker and will use the App accordingly.\nYou understand the App does not support audio/video uploads or calls.\nYou consent to receive in-App notifications and updates.\n\nFor any questions or concerns, contact us at perfectpawsph@gmail.com.',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelSmall
                                .fontStyle,
                          ),
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelSmall.fontStyle,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'I accept the terms and conditions',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).success,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(1.0, 0.0),
                          child: Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).alternate,
                            ),
                            child: Checkbox(
                              value: _model.checkboxValue ??= false,
                              onChanged: (newValue) async {
                                safeSetState(
                                    () => _model.checkboxValue = newValue!);
                                if (newValue!) {
                                  context
                                      .pushNamed(RegisterPageWidget.routeName);
                                }
                              },
                              side: BorderSide(
                                width: 2,
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                              activeColor: FlutterFlowTheme.of(context).success,
                              checkColor: FlutterFlowTheme.of(context).info,
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
      ),
    );
  }
}
