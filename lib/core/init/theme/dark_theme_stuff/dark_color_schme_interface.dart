import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DarkColorScheme {
  static DarkColorScheme? _instance;
  static DarkColorScheme? get instance {
    if (_instance == null) {
      _instance = DarkColorScheme._();
      return _instance;
    }

    return _instance;
  }

  DarkColorScheme._();

  final SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle.dark;
  final Color primaryColor = Colors.amber;
}
