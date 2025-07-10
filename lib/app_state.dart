import 'package:flutter/material.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _nombres = '';
  String get nombres => _nombres;
  set nombres(String value) {
    _nombres = value;
  }

  String _dni = '';
  String get dni => _dni;
  set dni(String value) {
    _dni = value;
  }

  String _empresa = '';
  String get empresa => _empresa;
  set empresa(String value) {
    _empresa = value;
  }

  String _foto = '';
  String get foto => _foto;
  set foto(String value) {
    _foto = value;
  }

  String _latitudStr = '';
  String get latitudStr => _latitudStr;
  set latitudStr(String value) {
    _latitudStr = value;
  }

  String _longitudStr = '';
  String get longitudStr => _longitudStr;
  set longitudStr(String value) {
    _longitudStr = value;
  }

  String _ubicacion = '';
  String get ubicacion => _ubicacion;
  set ubicacion(String value) {
    _ubicacion = value;
  }

  LatLng? _location = LatLng(-12.1118557, -76.94395770000001);
  LatLng? get location => _location;
  set location(LatLng? value) {
    _location = value;
  }

  String _turno = '';
  String get turno => _turno;
  set turno(String value) {
    _turno = value;
  }

  String _estado = '';
  String get estado => _estado;
  set estado(String value) {
    _estado = value;
  }

  String _refrigerio = '-';
  String get refrigerio => _refrigerio;
  set refrigerio(String value) {
    _refrigerio = value;
  }

  DateTime? _hora = DateTime.fromMillisecondsSinceEpoch(1752075540000);
  DateTime? get hora => _hora;
  set hora(DateTime? value) {
    _hora = value;
  }
}
