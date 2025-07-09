import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'validacion_widget.dart' show ValidacionWidget;
import 'package:flutter/material.dart';

class ValidacionModel extends FlutterFlowModel<ValidacionWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (validarRostro)] action in Button widget.
  ApiCallResponse? apiValidacion;
  // Stores action output result for [Backend Call - API (registrarAsistencia)] action in Button widget.
  ApiCallResponse? apiRegistrar;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
