// Temalandırma, renklendirme ve daha fazlası buarda olacak.
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


const colors = {
  "primary": Color.fromRGBO(207, 175, 119, 1),
  "onPrimary": Color.fromRGBO(255, 255, 255, 1),
  "secondary": Color.fromRGBO(128, 107, 126, 1),
  "onSecondary": Color.fromRGBO(255, 255, 255, 1),
  "surface": Color.fromRGBO(255, 255, 255, 1),
  "onSurface": Color.fromRGBO(128, 107, 126, 1),
  "success": Color.fromRGBO(46, 161, 40, 1),
  "error": Color.fromRGBO(158, 58, 58, 1),
  "onError": Color.fromRGBO(248, 248, 248, 1),
};

const darkColors = {
  "primary": Color.fromRGBO(255, 255, 255, 1),
  "onPrimary": Color.fromRGBO(255, 255, 255, 1),
  "secondary": Color.fromRGBO(255, 255, 255, 1),
  "onSecondary": Color.fromRGBO(255, 255, 255, 1),
  "surface": Color.fromRGBO(13, 28, 48, 1), // gece modu için seçtiğim renk
  "onSurface": Color.fromRGBO(255, 255, 255, 1),
  "success": Color.fromRGBO(46, 161, 40, 1),
  "error": Color.fromRGBO(158, 58, 58, 1),
  "onError": Color.fromRGBO(246, 245, 245, 1),
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
  textTheme: GoogleFonts.amitaTextTheme(),
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
