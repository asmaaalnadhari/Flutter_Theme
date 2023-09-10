import 'package:flutter/material.dart';

import '../app_color/app_color_dark.dart';

ThemeData getThemeDataDark()=>ThemeData(
    scaffoldBackgroundColor: Colors.black54,
//---------Main Color----------------
    primaryColor: AppColorsDark.appBarColor,
    primarySwatch:AppColorsDark.appBarColor  ,
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
        color: AppColorsDark.appBarColor ??Colors.teal[400]
    ),
//---------TextButton Theme----------------
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
            foregroundColor:MaterialStateProperty.all(
                Colors.black
            ),
            backgroundColor:MaterialStateProperty.all(
                AppColorsDark.textButtonColor
            )
        )
    ),
//---------Switch Theme----------------
    switchTheme: SwitchThemeData(
        trackColor: MaterialStateProperty.all(Colors.deepOrange),
        thumbColor: MaterialStateProperty.all(Colors.deepPurple),
        trackOutlineColor: MaterialStateProperty.all(Colors.white),
        trackOutlineWidth: MaterialStateProperty.all(2),
        splashRadius: 1,
        materialTapTargetSize: MaterialTapTargetSize.padded
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
    dividerTheme:  DividerThemeData(
        color: Colors.indigo[50],
        thickness: 3,
        space: 5
    ),

);