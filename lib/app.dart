import 'package:flutter/material.dart';
import 'package:mentis_math/home/view/home_page.dart';
import 'package:mentis_math/theme.dart';

/// {@template MentisMath_app}
/// A [MaterialApp] which sets the `home` to [MentisMathPage].
/// {@endtemplate}
class MentisMathApp extends StatelessWidget {
  /// {@macro MentisMath_app}
  const MentisMathApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mentis Math',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}
