import 'package:flutter/material.dart';
import 'package:flutter_theme/core/global/theme/theme_data/theme_data_light.dart';
import 'package:flutter_theme/core/global/theme/theme_data/theme_data_dark.dart';
import 'core/SharedPrefrences/CasheHelper.dart';
import 'home.dart';

/// Entry point of the app.
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize shared preferences
  await CacheManager.initializeCache();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLightTheme = CacheManager.getData(key: 'Mode') ?? false;

  void _toggleTheme(bool value) {



    setState(() {
      isLightTheme = value;
      CacheManager.saveData(key: 'Mode', value: value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Pass theme based on state
      theme: getLightTheme(),
      darkTheme: getDarkTheme(),
      themeMode: isLightTheme ? ThemeMode.light : ThemeMode.dark, // Toggle between light and dark
      home: Home(onThemeChanged: _toggleTheme, isLightTheme: isLightTheme), // Pass state to Home
    );
  }
}

///merge function:
// merges the already applied theme with the new TextStyle.
///apply() :
// That creates a copy of text style replacing or altering the specified properties in it.
/// copyWith() :
//It creates a copy of text style but with the given fields replaced with the new values.