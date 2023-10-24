import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ofertas_create_page_widget.dart' show OfertasCreatePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class OfertasCreatePageModel extends FlutterFlowModel<OfertasCreatePageWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for cargoField widget.
  FocusNode? cargoFieldFocusNode1;
  TextEditingController? cargoFieldController1;
  String? Function(BuildContext, String?)? cargoFieldController1Validator;
  // State field(s) for empresaField widget.
  FocusNode? empresaFieldFocusNode1;
  TextEditingController? empresaFieldController1;
  String? Function(BuildContext, String?)? empresaFieldController1Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for empresaField widget.
  FocusNode? empresaFieldFocusNode2;
  TextEditingController? empresaFieldController2;
  String? Function(BuildContext, String?)? empresaFieldController2Validator;
  // State field(s) for cargoField widget.
  FocusNode? cargoFieldFocusNode2;
  TextEditingController? cargoFieldController2;
  String? Function(BuildContext, String?)? cargoFieldController2Validator;
  // State field(s) for cargoField widget.
  FocusNode? cargoFieldFocusNode3;
  TextEditingController? cargoFieldController3;
  final cargoFieldMask3 = MaskTextInputFormatter(mask: '(###) ###-####');
  String? Function(BuildContext, String?)? cargoFieldController3Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    cargoFieldFocusNode1?.dispose();
    cargoFieldController1?.dispose();

    empresaFieldFocusNode1?.dispose();
    empresaFieldController1?.dispose();

    empresaFieldFocusNode2?.dispose();
    empresaFieldController2?.dispose();

    cargoFieldFocusNode2?.dispose();
    cargoFieldController2?.dispose();

    cargoFieldFocusNode3?.dispose();
    cargoFieldController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
