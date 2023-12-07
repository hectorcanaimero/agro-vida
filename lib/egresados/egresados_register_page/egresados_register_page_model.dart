import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'egresados_register_page_widget.dart' show EgresadosRegisterPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class EgresadosRegisterPageModel
    extends FlutterFlowModel<EgresadosRegisterPageWidget> {
  ///  Local state fields for this page.

  String intereses = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for nameField widget.
  FocusNode? nameFieldFocusNode;
  TextEditingController? nameFieldController;
  String? Function(BuildContext, String?)? nameFieldControllerValidator;
  // State field(s) for NacDropDown widget.
  String? nacDropDownValue;
  FormFieldController<String>? nacDropDownValueController;
  // State field(s) for idField widget.
  FocusNode? idFieldFocusNode;
  TextEditingController? idFieldController;
  String? Function(BuildContext, String?)? idFieldControllerValidator;
  // State field(s) for SexoDropDown widget.
  String? sexoDropDownValue;
  FormFieldController<String>? sexoDropDownValueController;
  // State field(s) for born widget.
  FocusNode? bornFocusNode;
  TextEditingController? bornController;
  final bornMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? bornControllerValidator;
  // State field(s) for emailField widget.
  FocusNode? emailFieldFocusNode;
  TextEditingController? emailFieldController;
  String? Function(BuildContext, String?)? emailFieldControllerValidator;
  // State field(s) for phoneField widget.
  FocusNode? phoneFieldFocusNode;
  TextEditingController? phoneFieldController;
  String? Function(BuildContext, String?)? phoneFieldControllerValidator;
  // State field(s) for countryField widget.
  FocusNode? countryFieldFocusNode;
  TextEditingController? countryFieldController;
  String? Function(BuildContext, String?)? countryFieldControllerValidator;
  // State field(s) for cityField widget.
  FocusNode? cityFieldFocusNode;
  TextEditingController? cityFieldController;
  String? Function(BuildContext, String?)? cityFieldControllerValidator;
  // State field(s) for universidad widget.
  FocusNode? universidadFocusNode;
  TextEditingController? universidadController;
  final universidadMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? universidadControllerValidator;
  // State field(s) for anoEgredsado widget.
  FocusNode? anoEgredsadoFocusNode;
  TextEditingController? anoEgredsadoController;
  final anoEgredsadoMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? anoEgredsadoControllerValidator;
  // State field(s) for AreaDesempanoDropDown widget.
  String? areaDesempanoDropDownValue;
  FormFieldController<String>? areaDesempanoDropDownValueController;
  // State field(s) for InteresesDropDown widget.
  String? interesesDropDownValue;
  FormFieldController<String>? interesesDropDownValueController;
  // State field(s) for otrosField widget.
  FocusNode? otrosFieldFocusNode;
  TextEditingController? otrosFieldController;
  String? Function(BuildContext, String?)? otrosFieldControllerValidator;
  // State field(s) for estudiosCuartinivelField widget.
  FocusNode? estudiosCuartinivelFieldFocusNode;
  TextEditingController? estudiosCuartinivelFieldController;
  String? Function(BuildContext, String?)?
      estudiosCuartinivelFieldControllerValidator;
  // State field(s) for fbField widget.
  FocusNode? fbFieldFocusNode;
  TextEditingController? fbFieldController;
  String? Function(BuildContext, String?)? fbFieldControllerValidator;
  // State field(s) for xField widget.
  FocusNode? xFieldFocusNode;
  TextEditingController? xFieldController;
  String? Function(BuildContext, String?)? xFieldControllerValidator;
  // State field(s) for igField widget.
  FocusNode? igFieldFocusNode;
  TextEditingController? igFieldController;
  String? Function(BuildContext, String?)? igFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    nameFieldFocusNode?.dispose();
    nameFieldController?.dispose();

    idFieldFocusNode?.dispose();
    idFieldController?.dispose();

    bornFocusNode?.dispose();
    bornController?.dispose();

    emailFieldFocusNode?.dispose();
    emailFieldController?.dispose();

    phoneFieldFocusNode?.dispose();
    phoneFieldController?.dispose();

    countryFieldFocusNode?.dispose();
    countryFieldController?.dispose();

    cityFieldFocusNode?.dispose();
    cityFieldController?.dispose();

    universidadFocusNode?.dispose();
    universidadController?.dispose();

    anoEgredsadoFocusNode?.dispose();
    anoEgredsadoController?.dispose();

    otrosFieldFocusNode?.dispose();
    otrosFieldController?.dispose();

    estudiosCuartinivelFieldFocusNode?.dispose();
    estudiosCuartinivelFieldController?.dispose();

    fbFieldFocusNode?.dispose();
    fbFieldController?.dispose();

    xFieldFocusNode?.dispose();
    xFieldController?.dispose();

    igFieldFocusNode?.dispose();
    igFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
