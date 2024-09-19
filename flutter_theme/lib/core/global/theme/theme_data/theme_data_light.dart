import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_theme/core/global/theme/app_color/app_color_light.dart';

/// Light theme configuration with custom colors and components.
ThemeData getLightTheme() => ThemeData(
  // Scaffold background color
  scaffoldBackgroundColor: Colors.tealAccent.withOpacity(0.4),

  // Primary color and swatch
  primaryColor: AppColorsLight.primaryColor,
  primarySwatch: Colors.blue,

  // AppBar theme
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppColorsLight.appBarColor,
              systemStatusBarContrastEnforced:false,
              systemNavigationBarColor:Colors.white,
              systemNavigationBarDividerColor:Colors.blue,
              statusBarIconBrightness:Brightness.light
          ),
    elevation: 40,
    toolbarHeight: 90,
    centerTitle: true,
    iconTheme: IconThemeData(
      color: Colors.white,
      size: 50,
    ),
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontSize: 20,

    ),
    color: AppColorsLight.appBarColor
  ),

  // TextButton theme
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.white),
      backgroundColor: MaterialStateProperty.all(Colors.indigo[200]),
    ),
  ),

  // Switch theme
  switchTheme: SwitchThemeData(
    trackColor: MaterialStateProperty.all(Colors.greenAccent),
    thumbColor: MaterialStateProperty.all(Colors.lightBlueAccent),
    trackOutlineColor: MaterialStateProperty.all(Colors.black54),
    trackOutlineWidth: MaterialStateProperty.all(2),
    splashRadius: 4,
    mouseCursor: MaterialStateProperty.all(MouseCursor.defer),
  ),

  // Text theme
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 20,
      color: Colors.black,
    ),
    displayMedium: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 20,
      color: Colors.pink,
    ),
  ),

  // Icon theme
  iconTheme: IconThemeData(
    color: Colors.blue[900],
    size: 70,
  ),

  // Divider theme
  dividerTheme: const DividerThemeData(
    color: Colors.orange,
    thickness: 9,
    space: 30,
  ),
);

/// Helper function to create a MaterialColor from a single color.
MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(i * 0.1);
  }

  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }

  return MaterialColor(color.value, swatch);
}
