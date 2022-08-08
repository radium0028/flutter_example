import 'package:flutter/material.dart';

class MyTheme {
  static const Color primaryColor = Color(0xFFF5F5F5);

  static ThemeData norTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.light,
      canvasColor: primaryColor,
      colorScheme:
          Theme.of(context).colorScheme.copyWith(primary: primaryColor),
      appBarTheme: const AppBarTheme(
        color: primaryColor,
        iconTheme: IconThemeData(color: Colors.black),
      ),
    );
  }
}
