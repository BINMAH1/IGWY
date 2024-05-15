import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/change_main_photo/change_main_photo_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'edit_listing1_widget.dart' show EditListing1Widget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditListing1Model extends FlutterFlowModel<EditListing1Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for BusinessName widget.
  FocusNode? businessNameFocusNode;
  TextEditingController? businessNameTextController;
  String? Function(BuildContext, String?)? businessNameTextControllerValidator;
  String? _businessNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'We need to know the name of the place...';
    }

    return null;
  }

  // State field(s) for Location widget.
  var locationValue = FFPlace();
  // State field(s) for City widget.
  String? cityValue;
  FormFieldController<String>? cityValueController;
  // State field(s) for ListDescription widget.
  FocusNode? listDescriptionFocusNode;
  TextEditingController? listDescriptionTextController;
  String? Function(BuildContext, String?)?
      listDescriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {
    businessNameTextControllerValidator = _businessNameTextControllerValidator;
  }

  @override
  void dispose() {
    businessNameFocusNode?.dispose();
    businessNameTextController?.dispose();

    listDescriptionFocusNode?.dispose();
    listDescriptionTextController?.dispose();
  }
}
