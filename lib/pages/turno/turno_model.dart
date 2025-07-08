import '/components/hora_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'turno_widget.dart' show TurnoWidget;
import 'package:flutter/material.dart';

class TurnoModel extends FlutterFlowModel<TurnoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // Model for hora component.
  late HoraModel horaModel;
  // State field(s) for drpdwnTurno widget.
  FormFieldController<String>? drpdwnTurnoValueController;

  @override
  void initState(BuildContext context) {
    horaModel = createModel(context, () => HoraModel());
  }

  @override
  void dispose() {
    horaModel.dispose();
  }

  /// Additional helper methods.
  String? get drpdwnTurnoValue => drpdwnTurnoValueController?.value;
}
