import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mental_math/complement/cubit/complement_cubit.dart';

class ComplementView extends StatelessWidget {
  const ComplementView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Complement Practice'),
      ),
      body: BlocBuilder<ComplementCubit, ComplementState>(
        builder: (context, state) {
          if (state.options.isEmpty) {
            return const CircularProgressIndicator();
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Find the complement of ${state.number}',
                  style: const TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                    state.options.length,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: state.buttonColors[index],
                          ),
                          onPressed: () {
                            context.read<ComplementCubit>().checkAnswer(index);
                          },
                          child: Text(
                            '${state.options[index]}',
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
