import 'package:flutter/material.dart';
import 'package:kpps_app/core/init/theme/dark%20theme/theme_dark.dart';

import 'dummies/holder_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppDarkTheme().themeData,
      home: const PlaceholderHomeView(),
    );
  }
}
