import 'package:flutter/material.dart';

class TextStyles {
  static TextTheme mainTextTheme = const TextTheme(
    headlineLarge: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black54),
    displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    bodyLarge: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w700),
    bodyMedium: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
    bodySmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
  );
}
