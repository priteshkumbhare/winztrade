import '/flutter_flow/flutter_flow_util.dart';
import 'app_information_widget.dart' show AppInformationWidget;
import 'package:flutter/material.dart';

class AppInformationModel extends FlutterFlowModel<AppInformationWidget> {
  ///  Local state fields for this page.

  String docState = 'TermsConditions';

  bool mobileNumberSet = true;

  bool showAccountDelete = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for mainCol widget.
  ScrollController? mainCol;
  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for mobileNumber widget.
  FocusNode? mobileNumberFocusNode;
  TextEditingController? mobileNumberTextController;
  String? Function(BuildContext, String?)? mobileNumberTextControllerValidator;
  // State field(s) for accountNumber widget.
  FocusNode? accountNumberFocusNode;
  TextEditingController? accountNumberTextController;
  String? Function(BuildContext, String?)? accountNumberTextControllerValidator;
  String? _accountNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter Account Number';
    }

    return null;
  }

  // State field(s) for ifscCode widget.
  FocusNode? ifscCodeFocusNode;
  TextEditingController? ifscCodeTextController;
  String? Function(BuildContext, String?)? ifscCodeTextControllerValidator;
  String? _ifscCodeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter IFSC Code';
    }

    if (!RegExp('^[A-Z]{4}0\\d{6}\$').hasMatch(val)) {
      return 'Please enter valid IFSC Code';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    mainCol = ScrollController();
    columnController = ScrollController();
    accountNumberTextControllerValidator =
        _accountNumberTextControllerValidator;
    ifscCodeTextControllerValidator = _ifscCodeTextControllerValidator;
  }

  @override
  void dispose() {
    mainCol?.dispose();
    columnController?.dispose();
    mobileNumberFocusNode?.dispose();
    mobileNumberTextController?.dispose();

    accountNumberFocusNode?.dispose();
    accountNumberTextController?.dispose();

    ifscCodeFocusNode?.dispose();
    ifscCodeTextController?.dispose();
  }
}
