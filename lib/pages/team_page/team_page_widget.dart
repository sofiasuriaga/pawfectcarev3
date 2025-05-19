import 'package:paw_fect_care/utils/team_filter_utils.dart';

import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import '/components/conversation_new/conversation_new_widget.dart';
import '/components/dropdown_status_component/dropdown_status_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/backend/schema/structs/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'team_page_model.dart';
export 'team_page_model.dart';

class TeamPageWidget extends StatefulWidget {
  const TeamPageWidget({super.key});

  static String routeName = 'TeamPage';
  static String routePath = '/teamPage';

  @override
  State<TeamPageWidget> createState() => _TeamPageWidgetState();
}

class _TeamPageWidgetState extends State<TeamPageWidget> {
  late TeamPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TeamPageModel());

    _searchController.addListener(() {
      if (mounted) {
        setState(() {
          _searchQuery = _searchController.text;
        });
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _searchController.dispose();
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/blue.png',
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 0.0, 110.0),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/logo_transparent.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                        AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 25.0, 15.0, 0.0),
                                          child: Icon(
                                            Icons.notifications_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .warning,
                                            size: 30.0,
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 1.0)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Container(
                                    width: 355.0,
                                    height: 575.8,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(8.0),
                                        bottomRight: Radius.circular(8.0),
                                        topLeft: Radius.circular(16.0),
                                        topRight: Radius.circular(16.0),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 355.8,
                                          height: 63.4,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xFFFD8205),
                                                Colors.white
                                              ],
                                              stops: [0.0, 1.0],
                                              begin: AlignmentDirectional(
                                                  0.0, -1.0),
                                              end: AlignmentDirectional(0, 1.0),
                                            ),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(16.0),
                                              topRight: Radius.circular(16.0),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Icon(
                                                  Icons.groups_2_sharp,
                                                  color: FlutterFlowTheme.of(
                                                      context)
                                                      .success,
                                                  size: 30.0,
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  'Team Page',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .titleMedium
                                                      .override(
                                                    fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                    color: FlutterFlowTheme.of(context).success,
                                                    fontSize: 22.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Icon(
                                                  Icons.groups_2_sharp,
                                                  color: FlutterFlowTheme.of(
                                                      context)
                                                      .success,
                                                  size: 30.0,
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 10.0)),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              15.0, 15.0, 15.0, 10.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 45.0,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: Color(0x33000000),
                                                  offset: Offset(0.0, 2.0),
                                                )
                                              ],
                                              borderRadius:
                                              BorderRadius.circular(16.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 5.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: TextField(
                                                      controller: _searchController,
                                                      obscureText: false,
                                                      decoration: InputDecoration(
                                                        hintText: 'Search members...',
                                                        hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                          color: Colors.grey, // Typically used for hints
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                          ),
                                                        ),
                                                        enabledBorder: InputBorder.none,
                                                        focusedBorder: InputBorder.none,
                                                        filled: true,
                                                        fillColor: Colors.white,
                                                      ),
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                        color: Colors.black, // <-- Make sure this is visible
                                                        fontSize: 16.0,       // Optional: increase font size for clarity
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                                                          FlutterFlowTheme.of(context).bodyMediumFamily,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                    child: Icon(
                                                      Icons.search_outlined,
                                                      color: FlutterFlowTheme.of(context).success,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                25.0, 20.0, 0.0, 0.0),
                                            child: Text(
                                              'Myself',
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20.0, 10.0, 20.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 54.0,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: Color(0x33000000),
                                                  offset: Offset(
                                                    0.0,
                                                    2.0,
                                                  ),
                                                )
                                              ],
                                              borderRadius:
                                              BorderRadius.circular(16.0),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            0.0,
                                                            10.0,
                                                            10.0,
                                                            10.0),
                                                        child: Container(
                                                          decoration:
                                                          BoxDecoration(),
                                                          child: Text(
                                                            FFAppState()
                                                                .userName,
                                                            style: FlutterFlowTheme
                                                                .of(context)
                                                                .bodyMedium
                                                                .override(
                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                              color: Colors.black,
                                                              fontSize: 12.0,
                                                              letterSpacing: 0.0,
                                                              fontWeight: FontWeight.w500,
                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 10.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                25.0, 20.0, 0.0, 0.0),
                                            child: Text(
                                              'Members',
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 290.98,
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 20.0),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        20.0,
                                                        10.0,
                                                        20.0,
                                                        0.0),
                                                      child: StreamBuilder<List<UsersRow>>(
                                                        stream: _model
                                                            .listViewSupabaseStream ??=
                                                            SupaFlow.client
                                                                .from("users")
                                                                .stream(
                                                                primaryKey: [
                                                                  'id'
                                                                ])
                                                                .order(
                                                                'user_fullname',
                                                                ascending:
                                                                true)
                                                                .map((list) => list
                                                                .map((item) =>
                                                                UsersRow(
                                                                    item))
                                                                .toList()),
                                                        builder:
                                                            (context, snapshot) {
                                                          if (!snapshot.hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child:
                                                                CircularProgressIndicator(
                                                                  valueColor:
                                                                  AlwaysStoppedAnimation<Color>(
                                                                    FlutterFlowTheme.of(context).primary,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<UsersRow>
                                                          allUsersRowList =
                                                          snapshot.data!;

                                                          final List<UsersRow> filteredUsersRowList =
                                                          TeamFilterUtils.filterTeamMembers(
                                                            allMembers: allUsersRowList,
                                                            searchQuery: _searchQuery,
                                                          );

                                                          if (filteredUsersRowList.isEmpty && _searchQuery.isNotEmpty) {
                                                            return Padding(
                                                              padding: const EdgeInsets.all(16.0),
                                                              child: Center(
                                                                child: Text(
                                                                  'No members found for "$_searchQuery"',
                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                ),
                                                              ),
                                                            );
                                                          } else if (filteredUsersRowList.isEmpty) {
                                                            return Padding(
                                                              padding: const EdgeInsets.all(16.0),
                                                              child: Center(
                                                                child: Text(
                                                                  'No members to display.',
                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                ),
                                                              ),
                                                            );
                                                          }

                                                          return ListView.builder(
                                                            padding: EdgeInsets.zero,
                                                            shrinkWrap: true, // This is okay because it's inside a SingleChildScrollView bounded by a fixed height container
                                                            physics: ClampingScrollPhysics(), // Often better with shrinkWrap if parent scrolls
                                                            scrollDirection: Axis.vertical,
                                                            itemCount: filteredUsersRowList.length,
                                                            itemBuilder: (context, listViewIndex) {
                                                              final listViewUsersRow = filteredUsersRowList[listViewIndex];
                                                              // REMOVED SingleChildScrollView from here
                                                              return Column( // This Column directly returns the item's content
                                                                mainAxisSize: MainAxisSize.max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional.fromSTEB(
                                                                        0.0,
                                                                        0.0, // Adjusted padding if needed, or keep as is
                                                                        0.0,
                                                                        10.0),
                                                                    child: Container(
                                                                      width: double.infinity,
                                                                      height: 54.0,
                                                                      decoration: BoxDecoration(
                                                                        color: Colors.white,
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            blurRadius: 4.0,
                                                                            color: Color(0x33000000),
                                                                            offset: Offset(0.0, 2.0,),
                                                                          )
                                                                        ],
                                                                        borderRadius: BorderRadius.circular(16.0),
                                                                      ),
                                                                      child: Align(
                                                                        alignment: AlignmentDirectional(-1.0, -1.0), // This alignment might make content appear at the top
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Row(
                                                                            mainAxisSize: MainAxisSize.max,
                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                  child: Container(
                                                                                    constraints: BoxConstraints(
                                                                                      maxWidth: 110.0,
                                                                                    ),
                                                                                    decoration: BoxDecoration(),
                                                                                    child: Text(
                                                                                      valueOrDefault<String>(
                                                                                        listViewUsersRow.userFullname,
                                                                                        '-',
                                                                                      ),
                                                                                      textAlign: TextAlign.start,
                                                                                      style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                        fontSize: 12.0,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Builder(
                                                                                builder: (context) => InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    _model.apiResult8qn = await GetConversationCall.call(
                                                                                      accessToken: FFAppState().accessToken,
                                                                                    );
                                                                                    await showDialog(
                                                                                      context: context,
                                                                                      builder: (dialogContext) {
                                                                                        return Dialog(
                                                                                          elevation: 0,
                                                                                          insetPadding: EdgeInsets.zero,
                                                                                          backgroundColor: Colors.transparent,
                                                                                          alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                          child: GestureDetector(
                                                                                            onTap: () {
                                                                                              FocusScope.of(dialogContext).unfocus();
                                                                                              FocusManager.instance.primaryFocus?.unfocus();
                                                                                            },
                                                                                            child: ConversationNewWidget(
                                                                                              user: listViewUsersRow,
                                                                                              apiResult8qn: ConversationStruct.maybeFromMap((_model.apiResult8qn?.jsonBody ?? '')),
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    );
                                                                                    setState(() {});
                                                                                  },
                                                                                  child: Icon(
                                                                                    Icons.message,
                                                                                    color: FlutterFlowTheme.of(context).success,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              if (FFAppState().usertype == 'Admin')
                                                                                DropdownStatusComponentWidget(
                                                                                  key: Key('Keyn8x_${listViewIndex}_of_${filteredUsersRowList.length}'),
                                                                                  users: listViewUsersRow,
                                                                                ),
                                                                            ].divide(SizedBox(width: 10.0)),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          );
                                                        },
                                                      )                                                  ),
                                                ],
                                              ),
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
                      Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: wrapWithModel(
                          model: _model.bottomNavigationBarModel,
                          updateCallback: () => setState(() {}),
                          child: BottomNavigationBarWidget(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}