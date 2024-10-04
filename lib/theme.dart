import 'package:flutter/material.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Color(0xFFFFFFFF), // Light mode background
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFFE0E0E0), // Light mode AppBar background
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(
          Color(0xFFFFFFFF)), // Light mode thumb color
      trackColor: MaterialStateProperty.all(
          Color(0xFFC4C4C4)), // Light mode track color
    ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Color(0xFF111111), // You need to close this
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFF333333),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(Color(0xFF000000)),
      trackColor: MaterialStateProperty.all(Color(0xFF3B95FF)),
    ),
  );

  static String getImage(BuildContext context) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return 'assets/images/dark_mode.png';
    } else {
      return 'assets/images/light_mode.png';
    }
  }
}
