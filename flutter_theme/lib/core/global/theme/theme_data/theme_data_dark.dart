import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../app_color/app_color_dark.dart';

/// Dark theme configuration with custom colors and components.
ThemeData getDarkTheme() => ThemeData(

    // Scaffold background color
    scaffoldBackgroundColor: Colors.black,

    // Primary color and swatch
    primaryColor: AppColorsDark.appBarColor,
    primarySwatch: createMaterialColor(Colors.blue.shade900),

    // AppBar theme
    appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.blue[400],
            systemStatusBarContrastEnforced:true,
            systemNavigationBarColor:Colors.black,
            systemNavigationBarDividerColor:Colors.white,
            statusBarIconBrightness:Brightness.dark
        ),

        elevation: 0,
        toolbarHeight: 90,
        centerTitle: true,
        iconTheme: const IconThemeData(
            color: Colors.black,
            size: 50,
        ),
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20,

        ),
        color: Colors.blue[400],
    ),

    // TextButton theme
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.black),
            backgroundColor: MaterialStateProperty.all(AppColorsDark.textButtonColor),
        ),
    ),

    // Switch theme
    switchTheme: SwitchThemeData(
        trackColor: MaterialStateProperty.all(Colors.deepOrange),
        thumbColor: MaterialStateProperty.all(Colors.deepPurple),
        trackOutlineColor: MaterialStateProperty.all(Colors.white),
        trackOutlineWidth: MaterialStateProperty.all(2),
        splashRadius: 1,
        materialTapTargetSize: MaterialTapTargetSize.padded,
        mouseCursor: MaterialStateProperty.all(MouseCursor.defer),
    ),

    // Text theme
    textTheme: const TextTheme(
        displayLarge: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 20,
            color: Colors.blue,
        ),
        displayMedium: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: Colors.blue,
        ),
    ),

    // Icon theme
    iconTheme: IconThemeData(
        color: Colors.white,
        size: 50,
    ),

    // Divider theme
    dividerTheme: DividerThemeData(
        color: Colors.indigo[50],
        thickness: 3,
        space: 5,
    ),
);

/// Helper function to create a MaterialColor from a single color.
/// Used to generate color swatches for primarySwatch.
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
