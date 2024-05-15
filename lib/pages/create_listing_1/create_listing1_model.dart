import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:io';
import 'create_listing1_widget.dart' show CreateListing1Widget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateListing1Model extends FlutterFlowModel<CreateListing1Widget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for BuisnessName widget.
  FocusNode? buisnessNameFocusNode;
  TextEditingController? buisnessNameTextController;
  String? Function(BuildContext, String?)? buisnessNameTextControllerValidator;
  // State field(s) for Location widget.
  var locationValue = FFPlace();
  // State field(s) for City widget.
  String? cityValue;
  FormFieldController<String>? cityValueController;
  // State field(s) for ListingDesc widget.
  FocusNode? listingDescFocusNode;
  TextEditingController? listingDescTextController;
  String? Function(BuildContext, String?)? listingDescTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PropertiesRecord? newProperty;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    buisnessNameFocusNode?.dispose();
    buisnessNameTextController?.dispose();

    listingDescFocusNode?.dispose();
    listingDescTextController?.dispose();
  }
}
