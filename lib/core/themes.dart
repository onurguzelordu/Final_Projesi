// Temalandırma, renklendirme ve daha fazlası buarda olacak.

import 'package:flutter/material.dart';

const colors = {
  "primary": Color.fromRGBO(207, 175, 119, 1),
  "onPrimary": Color.fromRGBO(255, 255, 255, 1),
  "secondary": Color.fromRGBO(128, 107, 126, 1),
  "onSecondary": Color.fromRGBO(255, 255, 255, 1),
  "surface": Color.fromRGBO(255, 255, 255, 1),
  "onSurface": Color.fromRGBO(128, 107, 126, 1),
// "success": Color.fromRGBO(r, g, b, opacity),
// "error": Color.fromRGBO(r, g, b, opacity),
};

const darkColors = {
  "primary": Color.fromRGBO(13, 28, 48, 1),
  "onPrimary": Color.fromRGBO(255, 255, 255, 1),
  "secondary": Color.fromRGBO(141, 87, 63, 1),
  "onSecondary": Color.fromRGBO(255, 255, 255, 1),
  "surface": Color.fromRGBO(13, 28, 48, 1), // gece modu için seçtiğim renk
  "onSurface": Color.fromRGBO(255, 255, 255, 1),
// "success": Color.fromRGBO(r, g, b, opacity),
// "error": Color.fromRGBO(r, g, b, opacity),
};

final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    brightness: Brightness.light,
    primary: colors["primary"]!,
    onPrimary: colors["onPrimary"]!,
    secondary: colors["secondary"]!,
    onSecondary: colors["onSecondary"]!,
    error: colors["error"]!,
    onError: colors["onError"]!,
    surface: colors["surface"]!,
    onSurface: colors["onSurface"]!,
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    brightness: Brightness.dark,
    primary: darkColors["primary"]!,
    onPrimary: darkColors["onPrimary"]!,
    secondary: darkColors["secondary"]!,
    onSecondary: darkColors["onSecondary"]!,
    error: darkColors["error"]!,
    onError: darkColors["onError"]!,
    surface: darkColors["surface"]!,
    onSurface: darkColors["onSurface"]!,
  ),
);
