import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'create_listing3_widget.dart' show CreateListing3Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateListing3Model extends FlutterFlowModel<CreateListing3Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Website widget.
  FocusNode? websiteFocusNode;
  TextEditingController? websiteTextController;
  String? Function(BuildContext, String?)? websiteTextControllerValidator;
  // State field(s) for Licences widget.
  FocusNode? licencesFocusNode;
  TextEditingController? licencesTextController;
  String? Function(BuildContext, String?)? licencesTextControllerValidator;
  // State field(s) for notes widget.
  FocusNode? notesFocusNode;
  TextEditingController? notesTextController;
  String? Function(BuildContext, String?)? notesTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    websiteFocusNode?.dispose();
    websiteTextController?.dispose();

    licencesFocusNode?.dispose();
    licencesTextController?.dispose();

    notesFocusNode?.dispose();
    notesTextController?.dispose();
  }
}
