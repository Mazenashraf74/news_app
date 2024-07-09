import 'package:flutter/material.dart';

class ApplecationManger {
  static const primrycolor = Color(0xFF39A552);
  static const Color primrydarkcolor = Color(0xFF4F5A69);
  static const Color onprimrydarkcolor = Color(0xFF141922);
  static ThemeData LightTheme = ThemeData(
      appBarTheme: AppBarTheme(
          color: Color(0xFF39A552),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35)))),
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.transparent,
      drawerTheme: DrawerThemeData(backgroundColor: Colors.white));
}
