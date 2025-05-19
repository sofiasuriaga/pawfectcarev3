import 'package:paw_fect_care/utils/feed_chart_filter_utils.dart';

import '/backend/supabase/supabase.dart';
import '/components/bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'feed_chart_page_model.dart';
export 'feed_chart_page_model.dart';


class FeedChartPageWidget extends StatefulWidget {
  const FeedChartPageWidget({super.key});

  static String routeName = 'FeedChartPage';
  static String routePath = '/feedChartPage';

  @override
  State<FeedChartPageWidget> createState() => _FeedChartPageWidgetState();
}

class _FeedChartPageWidgetState extends State<FeedChartPageWidget> {
  late FeedChartPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeedChartPageModel());

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
        body: Stack(
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
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
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
                            child: Icon(
                              Icons.notifications_sharp,
                              color: FlutterFlowTheme.of(context).warning,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 1.0)),
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                    child: FutureBuilder<List<FeedChartsRow>>(
                      future: FeedChartsTable().queryRows(
                        queryFn: (q) => q,
                      ),
                      builder: (context, snapshotFeedCharts) {
                        if (!snapshotFeedCharts.hasData) {
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
                        List<FeedChartsRow> containerFeedChartsRowList =
                        snapshotFeedCharts.data!;

                        return Container(
                          width: 355.0,
                          constraints: BoxConstraints(
                            maxHeight: 470.0,
                          ),
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
                                    begin: AlignmentDirectional(0.0, -1.0),
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
                                    Icon(
                                      Icons.pets, // Changed icon
                                      color: FlutterFlowTheme.of(context)
                                          .success,
                                      size: 30.0,
                                    ),
                                    Text(
                                      'Feed Chart',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                        fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                        color: FlutterFlowTheme.of(context).success,
                                        fontSize: 22.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                      ),
                                    ),
                                    Icon(
                                      Icons.pets, // Changed icon
                                      color: FlutterFlowTheme.of(context).success,
                                      size: 30.0,
                                    ),
                                  ].divide(SizedBox(width: 10.0)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 10.0, 15.0, 10.0),
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
                                              hintText: 'Search dogs...',
                                              hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                color: Colors.grey, // Hint color
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                                                ),
                                              ),
                                              enabledBorder: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              filled: true,
                                              fillColor: Colors.white, // Background
                                            ),
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                              color: Colors.black, // Ensure this contrasts with the background
                                              fontSize: 16.0,
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
                              Expanded(
                                child: FutureBuilder<List<DogsRow>>(
                                  future: DogsTable().queryRows(
                                    queryFn: (q) => q.order('dog_name', ascending: true),
                                  ),
                                  builder: (context, snapshotDogs) {
                                    if (!snapshotDogs.hasData) {
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
                                    List<DogsRow> allDogsRowList = snapshotDogs.data!;

                                    final List<DogsRow> filteredDogsRowList =
                                    FeedChartFilterUtils.filterDogs(
                                      allDogs: allDogsRowList,
                                      searchQuery: _searchQuery,
                                    );

                                    if (filteredDogsRowList.isEmpty && _searchQuery.isNotEmpty) {
                                      return Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Text(
                                            'No dogs found for "$_searchQuery"',
                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                          ),
                                        ),
                                      );
                                    } else if (filteredDogsRowList.isEmpty) {
                                      return Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Text(
                                            'No dogs to display.',
                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                          ),
                                        ),
                                      );
                                    }

                                    return ListView.builder(
                                      padding: EdgeInsets.symmetric(vertical: 10.0),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: filteredDogsRowList.length,
                                      itemBuilder:
                                          (context, listViewIndex) {
                                        final listViewDogsRow =
                                        filteredDogsRowList[listViewIndex];
                                        return Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(
                                              20.0,
                                              0.0, // Reduced top padding for items
                                              20.0,
                                              10.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                ExpandDogFoodWidget.routeName,
                                                queryParameters: {
                                                  'dog': serializeParam(
                                                    listViewDogsRow,
                                                    ParamType.SupabaseRow,
                                                  ),
                                                  'recipe': serializeParam(
                                                    containerFeedChartsRowList,
                                                    ParamType.SupabaseRow,
                                                    isList: true,
                                                  ),
                                                }.withoutNulls,
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
                                                    offset: Offset(0.0, 2.0,),
                                                  )
                                                ],
                                                borderRadius: BorderRadius.circular(16.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(10.0),
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 70.0,
                                                      height: 70.0,
                                                      clipBehavior: Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.network(
                                                        listViewDogsRow.dogImageUrl != null && listViewDogsRow.dogImageUrl != ''
                                                            ? listViewDogsRow.dogImageUrl!
                                                            : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sample-app-e07370/assets/6idym533w10n/placeholder_canine.png', // A default placeholder
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    SizedBox(width: 15.0),
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text(
                                                            listViewDogsRow.dogName,
                                                            style: FlutterFlowTheme.of(context).titleSmall.override(
                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                              color: FlutterFlowTheme.of(context).primary,
                                                              letterSpacing: 0.0,
                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                            ),
                                                          ),
                                                          SizedBox(height: 4.0),
                                                          Text(
                                                            'Gender: ${valueOrDefault<String>(listViewDogsRow.dogGender, '-')}',
                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                              letterSpacing: 0.0,
                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                            ),
                                                          ),
                                                          Text(
                                                            'Age: ${valueOrDefault<String>(listViewDogsRow.dogAge, '-')}',
                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                              letterSpacing: 0.0,
                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
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
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
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
    );
  }
}