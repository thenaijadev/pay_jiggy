import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Multi",
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      brightness: Brightness.light,
      background: Colors.grey.shade300,
      primary: const Color(0xffFF9818),
      secondary: Colors.grey.shade500,
      inversePrimary: Colors.grey.shade800,
    ),
    textTheme: ThemeData.light()
        .textTheme
        .apply(bodyColor: Colors.grey[800], displayColor: Colors.black),
  );
}
