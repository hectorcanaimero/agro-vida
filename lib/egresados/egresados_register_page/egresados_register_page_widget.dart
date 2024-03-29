import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'egresados_register_page_model.dart';
export 'egresados_register_page_model.dart';

class EgresadosRegisterPageWidget extends StatefulWidget {
  const EgresadosRegisterPageWidget({
    super.key,
    required this.uid,
  });

  final DocumentReference? uid;

  @override
  State<EgresadosRegisterPageWidget> createState() =>
      _EgresadosRegisterPageWidgetState();
}

class _EgresadosRegisterPageWidgetState
    extends State<EgresadosRegisterPageWidget> {
  late EgresadosRegisterPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EgresadosRegisterPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'EgresadosRegisterPage'});
    _model.nameFieldController ??=
        TextEditingController(text: currentUserDisplayName);
    _model.nameFieldFocusNode ??= FocusNode();

    _model.idFieldController ??= TextEditingController();
    _model.idFieldFocusNode ??= FocusNode();

    _model.bornController ??= TextEditingController();
    _model.bornFocusNode ??= FocusNode();

    _model.emailFieldController ??=
        TextEditingController(text: currentUserEmail);
    _model.emailFieldFocusNode ??= FocusNode();

    _model.phoneFieldController ??= TextEditingController();
    _model.phoneFieldFocusNode ??= FocusNode();

    _model.countryFieldController ??= TextEditingController();
    _model.countryFieldFocusNode ??= FocusNode();

    _model.cityFieldController ??= TextEditingController();
    _model.cityFieldFocusNode ??= FocusNode();

    _model.anoEgredsadoController ??= TextEditingController();
    _model.anoEgredsadoFocusNode ??= FocusNode();

    _model.otrosFieldController ??= TextEditingController();
    _model.otrosFieldFocusNode ??= FocusNode();

    _model.estudiosCuartinivelFieldController ??= TextEditingController();
    _model.estudiosCuartinivelFieldFocusNode ??= FocusNode();

    _model.fbFieldController ??= TextEditingController();
    _model.fbFieldFocusNode ??= FocusNode();

    _model.xFieldController ??= TextEditingController();
    _model.xFieldFocusNode ??= FocusNode();

    _model.igFieldController ??= TextEditingController();
    _model.igFieldFocusNode ??= FocusNode();

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
              logFirebaseEvent('EGRESADOS_REGISTER_arrow_back_rounded_IC');
              logFirebaseEvent('IconButton_navigate_back');
              context.pop();
            },
          ),
          title: Text(
            'Regresar',
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
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 100.0,
                    decoration: BoxDecoration(),
                    child: Form(
                      key: _model.formKey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            AuthUserStreamWidget(
                              builder: (context) => TextFormField(
                                controller: _model.nameFieldController,
                                focusNode: _model.nameFieldFocusNode,
                                autofocus: true,
                                readOnly: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Nombre Completo',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                validator: _model.nameFieldControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowDropDown<String>(
                                  controller:
                                      _model.nacDropDownValueController ??=
                                          FormFieldController<String>(null),
                                  options: ['V', 'E'],
                                  onChanged: (val) => setState(
                                      () => _model.nacDropDownValue = val),
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.25,
                                  height: 50.0,
                                  textStyle:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  hintText: 'Nac',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor:
                                      FlutterFlowTheme.of(context).bgInput,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  borderWidth: 2.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: _model.idFieldController,
                                    focusNode: _model.idFieldFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.idFieldController',
                                      Duration(milliseconds: 2000),
                                      () async {
                                        logFirebaseEvent(
                                            'EGRESADOS_REGISTER_idField_ON_TEXTFIELD_');
                                        logFirebaseEvent(
                                            'idField_firestore_query');
                                        _model.existCedula =
                                            await queryEgresadosRecordOnce(
                                          queryBuilder: (egresadosRecord) =>
                                              egresadosRecord
                                                  .where(
                                                    'school',
                                                    isEqualTo: 110,
                                                  )
                                                  .where(
                                                    'identificator',
                                                    isEqualTo: int.tryParse(
                                                        _model.idFieldController
                                                            .text),
                                                  ),
                                          singleRecord: true,
                                        ).then((s) => s.firstOrNull);
                                        if (_model.existCedula!
                                            .hasIdentificator()) {
                                          logFirebaseEvent(
                                              'idField_update_page_state');
                                          setState(() {
                                            _model.update = true;
                                          });
                                        } else {
                                          logFirebaseEvent(
                                              'idField_update_page_state');
                                          setState(() {
                                            _model.update = false;
                                          });
                                        }

                                        setState(() {});
                                      },
                                    ),
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Cedula de Identidad',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    keyboardType: TextInputType.number,
                                    validator: _model.idFieldControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ].divide(SizedBox(width: 10.0)),
                            ),
                            FlutterFlowDropDown<String>(
                              controller: _model.sexoDropDownValueController ??=
                                  FormFieldController<String>(null),
                              options: ['Masculino', 'Femenino', 'No Informar'],
                              onChanged: (val) => setState(
                                  () => _model.sexoDropDownValue = val),
                              width: double.infinity,
                              height: 50.0,
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              hintText: 'Sexo',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context).bgInput,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: _model.bornController,
                                    focusNode: _model.bornFocusNode,
                                    autofillHints: [AutofillHints.email],
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Fecha Nascimiento',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    keyboardType: TextInputType.number,
                                    validator: _model.bornControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [_model.bornMask],
                                  ),
                                ),
                              ].divide(SizedBox(width: 12.0)),
                            ),
                            TextFormField(
                              controller: _model.emailFieldController,
                              focusNode: _model.emailFieldFocusNode,
                              autofillHints: [AutofillHints.email],
                              readOnly: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'E-mail',
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              keyboardType: TextInputType.emailAddress,
                              validator: _model.emailFieldControllerValidator
                                  .asValidator(context),
                            ),
                            TextFormField(
                              controller: _model.phoneFieldController,
                              focusNode: _model.phoneFieldFocusNode,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Telefono de Contacto',
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              keyboardType: TextInputType.phone,
                              validator: _model.phoneFieldControllerValidator
                                  .asValidator(context),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: Color(0xFFBFBFC8),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Text(
                                'Datos Geográficos',
                                style:
                                    FlutterFlowTheme.of(context).headlineSmall,
                              ),
                            ),
                            TextFormField(
                              controller: _model.countryFieldController,
                              focusNode: _model.countryFieldFocusNode,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'País de Residencia',
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.countryFieldControllerValidator
                                  .asValidator(context),
                            ),
                            TextFormField(
                              controller: _model.cityFieldController,
                              focusNode: _model.cityFieldFocusNode,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Ciudad donde vices',
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.cityFieldControllerValidator
                                  .asValidator(context),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Text(
                                'Datos Facultad',
                                style:
                                    FlutterFlowTheme.of(context).headlineSmall,
                              ),
                            ),
                            FlutterFlowDropDown<String>(
                              controller:
                                  _model.perfilDropDownValueController ??=
                                      FormFieldController<String>(null),
                              options: [
                                'Egresado de la UCV',
                                'Egresado de otra Universidad',
                                'Productor Independiente',
                                'Estudiante'
                              ],
                              onChanged: (val) => setState(
                                  () => _model.perfilDropDownValue = val),
                              width: double.infinity,
                              height: 50.0,
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              hintText: 'Seleccione su perfil...',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context).bgInput,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                            if ((FFAppState().tipoUsuario != 'Productor') ||
                                (FFAppState().tipoUsuario != 'Estudiante'))
                              TextFormField(
                                controller: _model.anoEgredsadoController,
                                focusNode: _model.anoEgredsadoFocusNode,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Año de Egresado',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                keyboardType: TextInputType.number,
                                validator: _model
                                    .anoEgredsadoControllerValidator
                                    .asValidator(context),
                                inputFormatters: [_model.anoEgredsadoMask],
                              ),
                            if (FFAppState().tipoUsuario !=
                                'Productor, estudiante u otro')
                              FlutterFlowDropDown<String>(
                                controller: _model
                                        .areaDesempanoDropDownValueController ??=
                                    FormFieldController<String>(null),
                                options: [
                                  'Producción vegetal',
                                  'Producción animal',
                                  'Agroindustrial',
                                  'Ingeniería agrícola y/o asesorías ',
                                  'Venta y comercialización',
                                  'Gerencia pública o privada ',
                                  'Docencia , investigación  y extención',
                                  'Productor independiente'
                                ],
                                onChanged: (val) => setState(() =>
                                    _model.areaDesempanoDropDownValue = val),
                                width: double.infinity,
                                height: 50.0,
                                textStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                hintText: 'Área laboral de desempeño ',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context).bgInput,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                            if ((FFAppState().tipoUsuario != 'Productor') ||
                                (FFAppState().tipoUsuario != 'Estudiante'))
                              FlutterFlowDropDown<String>(
                                controller:
                                    _model.interesesDropDownValueController ??=
                                        FormFieldController<String>(null),
                                options: [
                                  'Estudios de cuartinivel',
                                  'Ampliación de conocimiento corto plazo',
                                  'Otros'
                                ],
                                onChanged: (val) async {
                                  setState(() =>
                                      _model.interesesDropDownValue = val);
                                  logFirebaseEvent(
                                      'EGRESADOS_REGISTER_InteresesDropDown_ON_');
                                  logFirebaseEvent(
                                      'InteresesDropDown_update_page_state');
                                  setState(() {
                                    _model.intereses =
                                        _model.interesesDropDownValue!;
                                  });
                                },
                                width: double.infinity,
                                height: 50.0,
                                textStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                hintText: 'intrereses  profesionales',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context).bgInput,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                            if (_model.intereses == 'Otros')
                              TextFormField(
                                controller: _model.otrosFieldController,
                                focusNode: _model.otrosFieldFocusNode,
                                autofillHints: [AutofillHints.email],
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Explique cual?',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                keyboardType: TextInputType.emailAddress,
                                validator: _model.otrosFieldControllerValidator
                                    .asValidator(context),
                              ),
                            if ((FFAppState().tipoUsuario != 'Productor') ||
                                (FFAppState().tipoUsuario != 'Estudiante'))
                              TextFormField(
                                controller:
                                    _model.estudiosCuartinivelFieldController,
                                focusNode:
                                    _model.estudiosCuartinivelFieldFocusNode,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      'Posee estudios de 4 nivel .  Cuales?',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                maxLines: 3,
                                validator: _model
                                    .estudiosCuartinivelFieldControllerValidator
                                    .asValidator(context),
                              ),
                            Divider(
                              thickness: 1.0,
                              color: Color(0xFFBFBFC8),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Text(
                                'Redes Sociales',
                                style:
                                    FlutterFlowTheme.of(context).headlineSmall,
                              ),
                            ),
                            TextFormField(
                              controller: _model.fbFieldController,
                              focusNode: _model.fbFieldFocusNode,
                              autofillHints: [AutofillHints.email],
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Facebook',
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              keyboardType: TextInputType.emailAddress,
                              validator: _model.fbFieldControllerValidator
                                  .asValidator(context),
                            ),
                            TextFormField(
                              controller: _model.xFieldController,
                              focusNode: _model.xFieldFocusNode,
                              autofillHints: [AutofillHints.email],
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'X o antiguo Twitter',
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              keyboardType: TextInputType.emailAddress,
                              validator: _model.xFieldControllerValidator
                                  .asValidator(context),
                            ),
                            TextFormField(
                              controller: _model.igFieldController,
                              focusNode: _model.igFieldFocusNode,
                              autofillHints: [AutofillHints.email],
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Instagram',
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              keyboardType: TextInputType.emailAddress,
                              validator: _model.igFieldControllerValidator
                                  .asValidator(context),
                            ),
                          ]
                              .divide(SizedBox(height: 24.0))
                              .around(SizedBox(height: 24.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 70.0,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'EGRESADOS_REGISTER_SALVAR_REGISTRO_BTN_O');
                        if (_model.update != null) {
                          logFirebaseEvent('Button_validate_form');
                          if (_model.formKey.currentState == null ||
                              !_model.formKey.currentState!.validate()) {
                            return;
                          }
                          logFirebaseEvent('Button_backend_call');

                          await _model.existCedula!.reference
                              .update(createEgresadosRecordData(
                            name: _model.nameFieldController.text,
                            nacionality: _model.nacDropDownValue,
                            country: _model.countryFieldController.text,
                            city: _model.cityFieldController.text,
                            email: _model.emailFieldController.text,
                            phone: _model.phoneFieldController.text,
                            intereses: _model.interesesDropDownValue,
                            others: _model.otrosFieldController.text,
                            areaLaboral: _model.perfilDropDownValue,
                            estudiosCuartinivel:
                                _model.estudiosCuartinivelFieldController.text,
                            dataEgresado: _model.anoEgredsadoController.text,
                            sexo: _model.sexoDropDownValue,
                            dataNacimiento:
                                valueOrDefault(currentUserDocument?.born, ''),
                            facebook: _model.fbFieldController.text,
                            instagram: _model.igFieldController.text,
                            twitter: _model.xFieldController.text,
                            identificator:
                                int.tryParse(_model.idFieldController.text),
                            userRef: currentUserReference,
                          ));
                          logFirebaseEvent('Button_alert_dialog');
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return WebViewAware(
                                child: AlertDialog(
                                  title: Text('Info'),
                                  content: Text(
                                      'Su registro fue actualizo con éxito!'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                          logFirebaseEvent('Button_navigate_to');

                          context.pushNamed(
                            'HomePage',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );

                          logFirebaseEvent('Button_update_app_state');
                          setState(() {
                            FFAppState().egresadoRef =
                                _model.existCedula?.reference;
                          });
                        } else {
                          logFirebaseEvent('Button_validate_form');
                          if (_model.formKey.currentState == null ||
                              !_model.formKey.currentState!.validate()) {
                            return;
                          }
                          logFirebaseEvent('Button_backend_call');

                          var egresadosRecordReference =
                              EgresadosRecord.collection.doc();
                          await egresadosRecordReference
                              .set(createEgresadosRecordData(
                            name: _model.nameFieldController.text,
                            nacionality: _model.nacDropDownValue,
                            country: _model.countryFieldController.text,
                            city: _model.cityFieldController.text,
                            email: _model.emailFieldController.text,
                            phone: _model.phoneFieldController.text,
                            intereses: _model.interesesDropDownValue,
                            others: _model.otrosFieldController.text,
                            areaLaboral: _model.perfilDropDownValue,
                            estudiosCuartinivel:
                                _model.estudiosCuartinivelFieldController.text,
                            dataEgresado: _model.anoEgredsadoController.text,
                            sexo: _model.sexoDropDownValue,
                            dataNacimiento: _model.bornController.text,
                            facebook: _model.fbFieldController.text,
                            instagram: _model.igFieldController.text,
                            twitter: _model.xFieldController.text,
                            updateTime: getCurrentTimestamp,
                            identificator:
                                int.tryParse(_model.idFieldController.text),
                            universidad: _model.perfilDropDownValue,
                            userRef: currentUserReference,
                          ));
                          _model.createEgresado =
                              EgresadosRecord.getDocumentFromData(
                                  createEgresadosRecordData(
                                    name: _model.nameFieldController.text,
                                    nacionality: _model.nacDropDownValue,
                                    country: _model.countryFieldController.text,
                                    city: _model.cityFieldController.text,
                                    email: _model.emailFieldController.text,
                                    phone: _model.phoneFieldController.text,
                                    intereses: _model.interesesDropDownValue,
                                    others: _model.otrosFieldController.text,
                                    areaLaboral: _model.perfilDropDownValue,
                                    estudiosCuartinivel: _model
                                        .estudiosCuartinivelFieldController
                                        .text,
                                    dataEgresado:
                                        _model.anoEgredsadoController.text,
                                    sexo: _model.sexoDropDownValue,
                                    dataNacimiento: _model.bornController.text,
                                    facebook: _model.fbFieldController.text,
                                    instagram: _model.igFieldController.text,
                                    twitter: _model.xFieldController.text,
                                    updateTime: getCurrentTimestamp,
                                    identificator: int.tryParse(
                                        _model.idFieldController.text),
                                    universidad: _model.perfilDropDownValue,
                                    userRef: currentUserReference,
                                  ),
                                  egresadosRecordReference);
                          logFirebaseEvent('Button_alert_dialog');
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return WebViewAware(
                                child: AlertDialog(
                                  title: Text('Info'),
                                  content:
                                      Text('Su registro fue creado con éxito!'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                          logFirebaseEvent('Button_navigate_to');

                          context.pushNamed(
                            'HomePage',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );

                          logFirebaseEvent('Button_update_app_state');
                          setState(() {
                            FFAppState().egresadoRef =
                                _model.createEgresado?.reference;
                          });
                        }

                        setState(() {});
                      },
                      text: 'Salvar Registro',
                      options: FFButtonOptions(
                        width: 270.0,
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                        elevation: 3.0,
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
            ],
          ),
        ),
      ),
    );
  }
}
