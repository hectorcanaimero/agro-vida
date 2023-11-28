import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'egresados_page_widget.dart' show EgresadosPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class EgresadosPageModel extends FlutterFlowModel<EgresadosPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for CedulaTextField widget.
  FocusNode? cedulaTextFieldFocusNode;
  TextEditingController? cedulaTextFieldController;
  String? Function(BuildContext, String?)? cedulaTextFieldControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  EgresadosRecord? successEgresado;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    cedulaTextFieldFocusNode?.dispose();
    cedulaTextFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
