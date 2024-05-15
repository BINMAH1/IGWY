import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'create_listing2_widget.dart' show CreateListing2Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateListing2Model extends FlutterFlowModel<CreateListing2Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for CashFlow widget.
  FocusNode? cashFlowFocusNode;
  TextEditingController? cashFlowTextController;
  String? Function(BuildContext, String?)? cashFlowTextControllerValidator;
  // State field(s) for AskingPrice widget.
  FocusNode? askingPriceFocusNode;
  TextEditingController? askingPriceTextController;
  String? Function(BuildContext, String?)? askingPriceTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    priceFocusNode?.dispose();
    priceTextController?.dispose();

    cashFlowFocusNode?.dispose();
    cashFlowTextController?.dispose();

    askingPriceFocusNode?.dispose();
    askingPriceTextController?.dispose();
  }
}
