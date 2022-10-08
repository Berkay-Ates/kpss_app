import 'package:flutter/src/material/theme_data.dart';
import 'package:kpps_app/core/init/theme/ligt_theme_stuff/light_color_scheme.dart';
import 'package:kpps_app/core/init/theme/theme%20interface/itheme.dart';

class AppLightTheme extends ILightColorScheme with IAppTheme {
  @override
  ThemeData? get themeData => ThemeData.light().copyWith();
}
