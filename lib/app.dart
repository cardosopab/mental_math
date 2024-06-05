import 'package:flutter/material.dart';
import 'package:mental_math/complement/view/complement_page.dart';

/// {@template MentalMath_app}
/// A [MaterialApp] which sets the `home` to [MentalMathPage].
/// {@endtemplate}
class MentalMathApp extends MaterialApp {
  /// {@macro MentalMath_app}
  const MentalMathApp({super.key}) : super(home: const ComplementPage());
}
