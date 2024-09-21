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

  double _desktopThreshold = 700.0;
  double get desktopThreshold => _desktopThreshold;
  set desktopThreshold(double value) {
    _desktopThreshold = value;
  }

  double _desktopHighThreshold = 1400.0;
  double get desktopHighThreshold => _desktopHighThreshold;
  set desktopHighThreshold(double value) {
    _desktopHighThreshold = value;
  }
}
