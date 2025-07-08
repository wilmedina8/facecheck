import 'package:flutter/material.dart';

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
}
