import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentis_math/app.dart';
import 'package:mentis_math/complement_observer.dart';

void main() {
  Bloc.observer = const ComplementObserver();
  runApp(const MentisMathApp());
}
