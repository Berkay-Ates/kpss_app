import 'package:flutter/services.dart';

class LightThemeScheme {
  static LightThemeScheme? _instance;
  static LightThemeScheme? get instance {
    if (_instance == null) {
      _instance = LightThemeScheme._();
      return _instance;
    }
    return _instance;
  }

  LightThemeScheme._();

  final SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle.light;
}
