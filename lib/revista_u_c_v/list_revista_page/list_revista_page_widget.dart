import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list_revista_page_model.dart';
export 'list_revista_page_model.dart';

class ListRevistaPageWidget extends StatefulWidget {
  const ListRevistaPageWidget({Key? key}) : super(key: key);

  @override
  _ListRevistaPageWidgetState createState() => _ListRevistaPageWidgetState();
}

class _ListRevistaPageWidgetState extends State<ListRevistaPageWidget>
    with TickerProviderStateMixin {
  late ListRevistaPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListRevistaPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ListRevistaPage'});
    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 30.0,
            ),
            onPressed: () async {
              logFirebaseEvent('LIST_REVISTA_arrow_back_rounded_ICN_ON_T');
              logFirebaseEvent('IconButton_navigate_back');
              context.pop();
            },
          ),
          title: Text(
            'Publicaciones UCV',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                child: Container(
                  width: double.infinity,
                  height: 150.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1625758477730-e228a4b58adb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3270&q=80',
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            fit: BoxFit.cover,
                            alignment: Alignment(0.00, 0.00),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 100.0,
                  decoration: BoxDecoration(),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment(0.0, 0),
                        child: FlutterFlowButtonTabBar(
                          useToggleButtonStyle: true,
                          labelStyle: FlutterFlowTheme.of(context).titleMedium,
                          unselectedLabelStyle: TextStyle(),
                          labelColor: FlutterFlowTheme.of(context).primaryText,
                          unselectedLabelColor:
                              FlutterFlowTheme.of(context).alternate,
                          backgroundColor: Color(0xFF52EDDA),
                          unselectedBackgroundColor: Color(0xFF6D6D6D),
                          borderColor: Color(0x26FFFFFF),
                          unselectedBorderColor:
                              FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          elevation: 0.0,
                          buttonMargin: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 4.0, 4.0, 4.0),
                          tabs: [
                            Tab(
                              text: 'Publicaciones',
                            ),
                            Tab(
                              text: 'Revista 2',
                            ),
                          ],
                          controller: _model.tabBarController,
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _model.tabBarController,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  18.0, 0.0, 18.0, 0.0),
                              child: StreamBuilder<List<PublicationsRecord>>(
                                stream: queryPublicationsRecord(
                                  queryBuilder: (publicationsRecord) =>
                                      publicationsRecord
                                          .where(
                                            'published',
                                            isEqualTo: true,
                                          )
                                          .where(
                                            'categories',
                                            arrayContains: 'magazine1',
                                          )
                                          .orderBy('created_on',
                                              descending: true),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 36.0,
                                        height: 36.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<PublicationsRecord>
                                      listViewPublicationsRecordList =
                                      snapshot.data!;
                                  return ListView.separated(
                                    padding: EdgeInsets.fromLTRB(
                                      0,
                                      24.0,
                                      0,
                                      24.0,
                                    ),
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewPublicationsRecordList.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 18.0),
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewPublicationsRecord =
                                          listViewPublicationsRecordList[
                                              listViewIndex];
                                      return Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'LIST_REVISTA_Row_eqvuvriw_ON_TAP');
                                                logFirebaseEvent(
                                                    'Row_navigate_to');

                                                context.pushNamed(
                                                  'DetailRevistaPage',
                                                  queryParameters: {
                                                    'uid': serializeParam(
                                                      listViewPublicationsRecord
                                                          .reference,
                                                      ParamType
                                                          .DocumentReference,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Text(
                                                                listViewPublicationsRecord
                                                                    .name,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.1,
                                                    decoration: BoxDecoration(),
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.00, 0.00),
                                                    child: Icon(
                                                      Icons
                                                          .arrow_forward_ios_sharp,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 5.0)),
                                              ),
                                            ),
                                            Divider(
                                              thickness: 1.0,
                                              color: Color(0x4A57636C),
                                            ),
                                          ].divide(SizedBox(height: 4.0)),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  18.0, 0.0, 18.0, 0.0),
                              child: StreamBuilder<List<PublicationsRecord>>(
                                stream: queryPublicationsRecord(
                                  queryBuilder: (publicationsRecord) =>
                                      publicationsRecord
                                          .where(
                                            'categories',
                                            arrayContains: 'magazine2',
                                          )
                                          .where(
                                            'published',
                                            isEqualTo: true,
                                          )
                                          .orderBy('created_on',
                                              descending: true),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 36.0,
                                        height: 36.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<PublicationsRecord>
                                      listViewPublicationsRecordList =
                                      snapshot.data!;
                                  return ListView.separated(
                                    padding: EdgeInsets.fromLTRB(
                                      0,
                                      24.0,
                                      0,
                                      24.0,
                                    ),
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewPublicationsRecordList.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 18.0),
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewPublicationsRecord =
                                          listViewPublicationsRecordList[
                                              listViewIndex];
                                      return Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'LIST_REVISTA_Row_13m1c1rn_ON_TAP');
                                                logFirebaseEvent(
                                                    'Row_navigate_to');

                                                context.pushNamed(
                                                  'DetailRevistaPage',
                                                  queryParameters: {
                                                    'uid': serializeParam(
                                                      listViewPublicationsRecord
                                                          .reference,
                                                      ParamType
                                                          .DocumentReference,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Text(
                                                                listViewPublicationsRecord
                                                                    .name,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.15,
                                                    decoration: BoxDecoration(),
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.00, 0.00),
                                                    child: Icon(
                                                      Icons
                                                          .arrow_forward_ios_sharp,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 5.0)),
                                              ),
                                            ),
                                            Divider(
                                              thickness: 1.0,
                                              color: Color(0x4A57636C),
                                            ),
                                          ].divide(SizedBox(height: 4.0)),
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
