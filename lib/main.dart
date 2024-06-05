import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mental_math/app.dart';
import 'package:mental_math/complement_observer.dart';

void main() {
  Bloc.observer = const ComplementObserver();
  runApp(const MentalMathApp());
}
