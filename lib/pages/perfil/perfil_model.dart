import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'perfil_widget.dart' show PerfilWidget;
import 'package:flutter/material.dart';

class PerfilModel extends FlutterFlowModel<PerfilWidget> {
  ///  Local state fields for this page.

  DateTime? currentTime;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_photoFace = false;
  FFUploadedFile uploadedLocalFile_photoFace =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Custom Action - convertImageToBase64] action in Image widget.
  String? base64;
  // Stores action output result for [Backend Call - API (validarRostro)] action in Button widget.
  ApiCallResponse? apiResultqy0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
