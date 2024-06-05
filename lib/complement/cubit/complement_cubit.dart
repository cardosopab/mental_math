// lib/cubit/complement_cubit.dart
import 'package:bloc/bloc.dart';
import 'dart:math';
import 'package:flutter/material.dart';

class ComplementState {
  final int number;
  final List<int> options;
  final int correctOption;
  final List<Color> buttonColors;

  ComplementState(this.number, this.options, this.correctOption, this.buttonColors);
}

class ComplementCubit extends Cubit<ComplementState> {
  int? previousNumber;

  ComplementCubit() : super(ComplementState(0, [], 0, List.filled(3, Colors.blue))) {
    generateNewQuestion();
  }

  void generateNewQuestion() {
    final random = Random();
    int number;

    // Ensure the new number is different from the previous number
    do {
      number = random.nextInt(9) + 1; // Random number from 1 to 9
    } while (number == previousNumber);

    previousNumber = number;
    int correctOption = 10 - number; // Complement

    // Generate options
    List<int> options = [correctOption];
    while (options.length < 3) {
      int option = random.nextInt(9) + 1;
      if (!options.contains(option)) {
        options.add(option);
      }
    }

    options.shuffle(); // Shuffle the options

    emit(ComplementState(number, options, correctOption, List.filled(3, Colors.blue)));
  }

  void checkAnswer(int index) {
    final state = this.state;
    List<Color> buttonColors = List.from(state.buttonColors);

    if (state.options[index] == state.correctOption) {
      buttonColors[index] = Colors.green;
    } else {
      buttonColors[index] = Colors.red;
    }

    emit(ComplementState(state.number, state.options, state.correctOption, buttonColors));

    // Revert colors back to default after 0.25 seconds
    Future.delayed(const Duration(milliseconds: 250), () {
      generateNewQuestion();
    });
  }
}
