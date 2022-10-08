import 'package:flutter/material.dart';

abstract class IGenericApptheme {
  ThemeData? get genericThemeData;
}

class GenericAppTheme<T extends IGenericApptheme> {
  final T apptheme;

  GenericAppTheme(this.apptheme);
}

class GenericDarkTheme extends IGenericApptheme {
  @override
  ThemeData? get genericThemeData => ThemeData.dark().copyWith();

  final String hello_world = 'hello world';
}

class GenericLightTheme extends IGenericApptheme {
  @override
  ThemeData? get genericThemeData => ThemeData.light().copyWith();
}
