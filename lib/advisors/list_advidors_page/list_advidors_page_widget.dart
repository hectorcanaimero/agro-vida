import '/advisors/create_advisor_page/create_advisor_page_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'list_advidors_page_model.dart';
export 'list_advidors_page_model.dart';

class ListAdvidorsPageWidget extends StatefulWidget {
  const ListAdvidorsPageWidget({Key? key}) : super(key: key);

  @override
  _ListAdvidorsPageWidgetState createState() => _ListAdvidorsPageWidgetState();
}

class _ListAdvidorsPageWidgetState extends State<ListAdvidorsPageWidget> {
  late ListAdvidorsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListAdvidorsPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ListAdvidorsPage'});
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
        floatingActionButton: Visibility(
          visible:
              valueOrDefault<bool>(currentUserDocument?.advisor, false) == true,
          child: AuthUserStreamWidget(
            builder: (context) => FloatingActionButton(
              onPressed: () async {
                logFirebaseEvent('LIST_ADVIDORS_FloatingActionButton_2wr80');
                logFirebaseEvent('FloatingActionButton_bottom_sheet');
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return WebViewAware(
                        child: GestureDetector(
                      onTap: () => _model.unfocusNode.canRequestFocus
                          ? FocusScope.of(context)
                              .requestFocus(_model.unfocusNode)
                          : FocusScope.of(context).unfocus(),
                      child: Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: CreateAdvisorPageWidget(),
                      ),
                    ));
                  },
                ).then((value) => safeSetState(() {}));
              },
              backgroundColor: FlutterFlowTheme.of(context).primary,
              elevation: 8.0,
              child: Icon(
                Icons.add,
                color: FlutterFlowTheme.of(context).info,
                size: 24.0,
              ),
            ),
          ),
        ),
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
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              logFirebaseEvent('LIST_ADVIDORS_arrow_back_rounded_ICN_ON_');
              logFirebaseEvent('IconButton_navigate_back');
              context.pop();
            },
          ),
          title: Text(
            'Consultores Técnicos',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (valueOrDefault<bool>(currentUserDocument?.advisor, false) ==
                  true)
                AuthUserStreamWidget(
                  builder: (context) => StreamBuilder<List<AdvisorsRecord>>(
                    stream: queryAdvisorsRecord(
                      queryBuilder: (advisorsRecord) => advisorsRecord.where(
                        'user',
                        isEqualTo: currentUserReference,
                      ),
                      singleRecord: true,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: SpinKitRing(
                              color: Color(0x004B39EF),
                              size: 40.0,
                            ),
                          ),
                        );
                      }
                      List<AdvisorsRecord> containerAdvisorsRecordList =
                          snapshot.data!;
                      // Return an empty Container when the item does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final containerAdvisorsRecord =
                          containerAdvisorsRecordList.isNotEmpty
                              ? containerAdvisorsRecordList.first
                              : null;
                      return Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        child: SwitchListTile.adaptive(
                          value: _model.switchListTileValue ??= true,
                          onChanged: (newValue) async {
                            setState(
                                () => _model.switchListTileValue = newValue!);
                            if (newValue!) {
                              logFirebaseEvent(
                                  'LIST_ADVIDORS_SwitchListTile_a375ww98_ON');
                              logFirebaseEvent('SwitchListTile_backend_call');

                              await containerAdvisorsRecord!.reference
                                  .update(createAdvisorsRecordData(
                                published: true,
                              ));
                            } else {
                              logFirebaseEvent(
                                  'LIST_ADVIDORS_SwitchListTile_a375ww98_ON');
                              logFirebaseEvent('SwitchListTile_backend_call');

                              await containerAdvisorsRecord!.reference
                                  .update(createAdvisorsRecordData(
                                published: false,
                              ));
                            }
                          },
                          subtitle: Text(
                            'Si tu estatus es off, ningun usuario podra entrar en contacto contigo',
                            style: FlutterFlowTheme.of(context).labelMedium,
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          activeColor: FlutterFlowTheme.of(context).primary,
                          activeTrackColor:
                              FlutterFlowTheme.of(context).accent1,
                          dense: false,
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                      );
                    },
                  ),
                ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 44.0),
                child: StreamBuilder<List<AdvisorsRecord>>(
                  stream: queryAdvisorsRecord(
                    queryBuilder: (advisorsRecord) => advisorsRecord
                        .where(
                          'published',
                          isEqualTo: true,
                        )
                        .orderBy('fullName'),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 36.0,
                          height: 36.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<AdvisorsRecord> listViewAdvisorsRecordList =
                        snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewAdvisorsRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewAdvisorsRecord =
                            listViewAdvisorsRecordList[listViewIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 8.0),
                          child: Container(
                            width: double.infinity,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x32000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(26.0),
                                    child: Image.network(
                                      listViewAdvisorsRecord.avatar,
                                      width: 36.0,
                                      height: 36.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            listViewAdvisorsRecord.fullName,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 0.0),
                                                child: Text(
                                                  listViewAdvisorsRecord
                                                      .specialty,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelMedium,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'LIST_ADVIDORS_PAGE_PAGE_VIEW_BTN_ON_TAP');
                                      logFirebaseEvent('Button_navigate_to');

                                      context.pushNamed(
                                        'DetailAdvisorPage',
                                        queryParameters: {
                                          'uid': serializeParam(
                                            listViewAdvisorsRecord.reference,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.bottomToTop,
                                            duration:
                                                Duration(milliseconds: 300),
                                          ),
                                        },
                                      );
                                    },
                                    text: 'View',
                                    options: FFButtonOptions(
                                      width: 70.0,
                                      height: 36.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Colors.white,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      elevation: 2.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ],
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
        ),
      ),
    );
  }
}
