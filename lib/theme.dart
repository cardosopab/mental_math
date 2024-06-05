import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    primary: Colors.black,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.lightGreen,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(backgroundColor: Colors.lightGreen)),
  scaffoldBackgroundColor: Colors.lightGreen[100],
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    primary: Colors.white,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.blueGrey,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey)),
  scaffoldBackgroundColor: Colors.blueGrey[600],
);
