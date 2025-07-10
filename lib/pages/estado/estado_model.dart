import '/components/hora_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'estado_widget.dart' show EstadoWidget;
import 'package:flutter/material.dart';

class EstadoModel extends FlutterFlowModel<EstadoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // Model for hora component.
  late HoraModel horaModel;
  // State field(s) for radioEstado widget.
  FormFieldController<String>? radioEstadoValueController;
  // State field(s) for radioRef widget.
  FormFieldController<String>? radioRefValueController;
  bool isDataUploading_photo2 = false;
  FFUploadedFile uploadedLocalFile_photo2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Custom Action - convertImageToBase64] action in Button widget.
  String? fotoBase64;

  @override
  void initState(BuildContext context) {
    horaModel = createModel(context, () => HoraModel());
  }

  @override
  void dispose() {
    horaModel.dispose();
  }

  /// Additional helper methods.
  String? get radioEstadoValue => radioEstadoValueController?.value;
  String? get radioRefValue => radioRefValueController?.value;
}
