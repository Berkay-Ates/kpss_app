import 'package:flutter/material.dart';
import 'package:kpps_app/core/init/theme/theme%20interface/itheme.dart';

import '../dark_theme_stuff/dark_color_scheme.dart';

class AppDarkTheme extends IAppTheme with DarkthemeInterface {
  @override
  ThemeData? get themeData => ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darktheme!.primaryColor,
        appBarTheme: AppBarTheme(
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.0))),
            color: darktheme!.primaryColor,
            elevation: 0.0),
      );
}
