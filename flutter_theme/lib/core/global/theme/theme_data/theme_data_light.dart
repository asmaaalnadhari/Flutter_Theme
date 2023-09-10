import 'package:flutter/material.dart';
import 'package:flutter_theme/core/global/theme/app_color/app_color_light.dart';

ThemeData getThemeDataLight()=>ThemeData(
scaffoldBackgroundColor: Colors.blueGrey[100],
//---------Main Color----------------
primaryColor: AppColorsLight.primaryColor,
primarySwatch:AppColorsLight.appBarColor  ,
//---------AppBar Theme----------------
appBarTheme:  AppBarTheme(
  elevation: 0,
  toolbarHeight: 90,
  centerTitle: true,
  // shadowColor: Colors.purple,
  //   titleSpacing: 20,
  iconTheme: const IconThemeData(
    color: Colors.indigo
    ,size: 50
  ),
  //backgroundColor:AppColorsLight.appBarColor ,
  color: AppColorsLight.appBarColor ??Colors.teal[400]
),
//---------TextButton Theme----------------
textButtonTheme: TextButtonThemeData(
  style: ButtonStyle(
    foregroundColor:MaterialStateProperty.all(
      AppColorsLight.textButtonColor
    ),
      backgroundColor:MaterialStateProperty.all(
          Colors.indigo[100]
      )
  )
),
//---------Switch Theme----------------
switchTheme: SwitchThemeData(
    trackColor: MaterialStateProperty.all(Colors.deepOrange),
  thumbColor: MaterialStateProperty.all(Colors.deepPurple),
  trackOutlineColor: MaterialStateProperty.all(Colors.black54),
  trackOutlineWidth: MaterialStateProperty.all(2),
  splashRadius: 1

    // thumbIcon: MaterialStateProperty.all(Icon(Icons.shield_moon_outlined))
  ,mouseCursor: MaterialStateProperty.all(
      MouseCursor.defer)
),
//---------Switch Theme----------------
textTheme: const TextTheme(
    displayLarge:TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 20,
        color: Colors.deepOrange
    ),
    displayMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20,
        color: Colors.pink
    )
),
//---------Icon Theme----------------
iconTheme: IconThemeData(
  color: Colors.yellow[900],
  size: 50,
),
  //---------Divider Theme----------------
dividerTheme: const DividerThemeData(
      color: Colors.indigo,
      thickness: 3,
      space: 2
  ),

);