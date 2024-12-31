import '/flutter_flow/flutter_flow_util.dart';
import 'create_profile_widget.dart' show CreateProfileWidget;
import 'package:flutter/material.dart';

class CreateProfileModel extends FlutterFlowModel<CreateProfileWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // State field(s) for yoursponsorPhone widget.
  FocusNode? yoursponsorPhoneFocusNode;
  TextEditingController? yoursponsorPhoneTextController;
  String? Function(BuildContext, String?)?
      yoursponsorPhoneTextControllerValidator;
  // State field(s) for yourPhone widget.
  FocusNode? yourPhoneFocusNode;
  TextEditingController? yourPhoneTextController;
  String? Function(BuildContext, String?)? yourPhoneTextControllerValidator;
  // State field(s) for address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    yoursponsorPhoneFocusNode?.dispose();
    yoursponsorPhoneTextController?.dispose();

    yourPhoneFocusNode?.dispose();
    yourPhoneTextController?.dispose();

    addressFocusNode?.dispose();
    addressTextController?.dispose();
  }
}
