import 'package:paw_fect_care/utils/dog_profiles_filter_utils.dart';

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
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dog_profiles_page_model.dart';
export 'dog_profiles_page_model.dart';

class DogProfilesPageWidget extends StatefulWidget {
  const DogProfilesPageWidget({super.key});

  static String routeName = 'DogProfilesPage';
  static String routePath = '/dogProfilesPage';

  @override
  State<DogProfilesPageWidget> createState() => _DogProfilesPageWidgetState();
}

class _DogProfilesPageWidgetState extends State<DogProfilesPageWidget> {
  late DogProfilesPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  String _searchQueryDoggos = '';

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DogProfilesPageModel());

    _model.searchDoggosTextController ??= TextEditingController();
    _model.searchDoggosFocusNode ??= FocusNode();

    _model.searchDoggosTextController!.addListener(() {
      if (mounted) {
        setState(() {
          _searchQueryDoggos = _model.searchDoggosTextController!.text;
        });
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
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
        body: Container(
          decoration: BoxDecoration(),
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
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                    EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/logo_transparent.png',
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 15.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                    NotificationPageWidget.routeName);
                              },
                              child: Icon(
                                Icons.notifications_sharp,
                                color: FlutterFlowTheme.of(context).warning,
                                size: 30.0,
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 1.0)),
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Container(
                      width: 355.0,
                      constraints: BoxConstraints(
                        maxHeight: 450.0,
                      ),
                      decoration: BoxDecoration(
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
                          if ((FFAppState().usertype == 'Admin') ||
                              (FFAppState().usertype == 'Owner'))
                            Align(
                              alignment: AlignmentDirectional(1.0, -1.0),
                              child: Builder(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 15.0, 5.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await showDialog(
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor:
                                            Colors.transparent,
                                            alignment: AlignmentDirectional(
                                                0.0, 0.0)
                                                .resolve(
                                                Directionality.of(context)),
                                            child: GestureDetector(
                                              onTap: () {
                                                FocusScope.of(dialogContext).unfocus();
                                                FocusManager.instance.primaryFocus?.unfocus();
                                              },
                                              child: AddNewDoggoComponentWidget(),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Icon(
                                      Icons.add_box,
                                      color: Color(0xFFFD8205),
                                      size: 30.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(15.0, 5.0, 15.0, 10.0),
                            child: Container(
                              width: double.infinity,
                              child: TextFormField(
                                controller: _model.searchDoggosTextController,
                                focusNode: _model.searchDoggosFocusNode,
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Search doggos...',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                    color: FlutterFlowTheme.of(context).secondaryText,
                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: FlutterFlowTheme.of(context).secondaryText,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).alternate,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                  contentPadding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                  color: FlutterFlowTheme.of(context).primaryText,
                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                ),
                                keyboardType: TextInputType.text,
                                validator: _model.searchDoggosTextControllerValidator.asValidator(context),
                              ),
                            ),
                          ),
                          Expanded(
                            child: FutureBuilder<List<DogsRow>>(
                              future: DogsTable().queryRows(
                                queryFn: (q) =>
                                    q.order('dog_name', ascending: true),
                              ),
                              builder: (context, snapshot) {
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                        AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<DogsRow> allDogsRowList = snapshot.data!;
                                final List<DogsRow> filteredDogsRowList =
                                DogProfilesFilterUtils.filterDoggos(
                                  allDoggos: allDogsRowList,
                                  searchQuery: _searchQueryDoggos,
                                );

                                if (filteredDogsRowList.isEmpty && _searchQueryDoggos.isNotEmpty) {
                                  return Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Center(child: Text('No doggos found for "$_searchQueryDoggos"', style: FlutterFlowTheme.of(context).bodyMedium,))
                                  );
                                } else if (filteredDogsRowList.isEmpty) {
                                  return Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Center(child: Text('No doggos to display.', style: FlutterFlowTheme.of(context).bodyMedium,))
                                  );
                                }

                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: filteredDogsRowList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewDogsRow =
                                    filteredDogsRowList[listViewIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 10.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if ((FFAppState().usertype == 'Admin') || (FFAppState().usertype == 'Owner'))
                                            Align(
                                              alignment: AlignmentDirectional(1.0, -1.0),
                                              child: Builder(
                                                builder: (context) => Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                  child: InkWell(
                                                    splashColor: Colors.transparent,
                                                    focusColor: Colors.transparent,
                                                    hoverColor: Colors.transparent,
                                                    highlightColor: Colors.transparent,
                                                    onTap: () async {
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
                                                              child: DeleteDogComponentWidget(id: listViewDogsRow.id),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                    child: Icon(
                                                      Icons.delete_sharp,
                                                      color: FlutterFlowTheme.of(context).error,
                                                      size: 24.0,
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
                                                        child: ViewDoggoProfileComponentWidget(dog: listViewDogsRow),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color: Color(0x33000000),
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  borderRadius: BorderRadius.circular(16.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(12.0),
                                                  child: Row(
                                                    mainAxisSize: MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: 80.0,
                                                        height: 80.0,
                                                        clipBehavior: Clip.antiAlias,
                                                        decoration: BoxDecoration(shape: BoxShape.circle),
                                                        child: Image.network(
                                                          listViewDogsRow.dogImageUrl != null && listViewDogsRow.dogImageUrl != ''
                                                              ? listViewDogsRow.dogImageUrl!
                                                              : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sample-app-e07370/assets/6idym533w10n/placeholder_canine.png',
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                        child: Column(
                                                          mainAxisSize: MainAxisSize.max,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Text(
                                                              valueOrDefault<String>(listViewDogsRow.dogName, 'Doggo Name'),
                                                              style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                letterSpacing: 0.0,
                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                              child: Text(
                                                                valueOrDefault<String>(listViewDogsRow.dogGender, '-'),
                                                                style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                  fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                  letterSpacing: 0.0,
                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                              child: Text(
                                                                'Age: ${valueOrDefault<String>(functions.calculateAgeFromBirthdayString(listViewDogsRow.dogBirthday!),'0')}',
                                                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                  fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                  letterSpacing: 0.0,
                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
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
    );
  }
}