import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _onBoarding = prefs.getBool('ff_onBoarding') ?? _onBoarding;
    });
    _safeInit(() {
      _yaRegistro = prefs.getBool('ff_yaRegistro') ?? _yaRegistro;
    });
    _safeInit(() {
      _tipoUsuario = prefs.getString('ff_tipoUsuario') ?? _tipoUsuario;
    });
    _safeInit(() {
      _egresadoRef = prefs.getString('ff_egresadoRef')?.ref ?? _egresadoRef;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _onBoarding = false;
  bool get onBoarding => _onBoarding;
  set onBoarding(bool _value) {
    _onBoarding = _value;
    prefs.setBool('ff_onBoarding', _value);
  }

  String _idEgresados = '';
  String get idEgresados => _idEgresados;
  set idEgresados(String _value) {
    _idEgresados = _value;
  }

  bool _yaRegistro = false;
  bool get yaRegistro => _yaRegistro;
  set yaRegistro(bool _value) {
    _yaRegistro = _value;
    prefs.setBool('ff_yaRegistro', _value);
  }

  String _tipoUsuario = 'UCV';
  String get tipoUsuario => _tipoUsuario;
  set tipoUsuario(String _value) {
    _tipoUsuario = _value;
    prefs.setString('ff_tipoUsuario', _value);
  }

  DocumentReference? _egresadoRef;
  DocumentReference? get egresadoRef => _egresadoRef;
  set egresadoRef(DocumentReference? _value) {
    _egresadoRef = _value;
    _value != null
        ? prefs.setString('ff_egresadoRef', _value.path)
        : prefs.remove('ff_egresadoRef');
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
