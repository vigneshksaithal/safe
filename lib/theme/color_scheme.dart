import 'package:flutter/material.dart';

ColorScheme kColorScheme() {
  return const ColorScheme(
    primary: Color.fromARGB(255, 17, 149, 220),
    onPrimary: Colors.white,
    secondary: Colors.grey,
    onSecondary: Colors.black,
    tertiary: Color.fromARGB(255, 247, 242, 198),
    brightness: Brightness.light,
    background: Color.fromARGB(255, 239, 239, 239),
    onBackground: Color.fromARGB(255, 77, 77, 77),
    error: Color.fromRGBO(235, 77, 75, 1),
    onError: Colors.white,
    surface: Colors.white,
    onSurface: Colors.white,
  );
}
