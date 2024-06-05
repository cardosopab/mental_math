import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentis_math/complement/cubit/complement_cubit.dart';
import 'package:mentis_math/complement/view/complement_view.dart';

/// {@template complement_page}
/// A [StatelessWidget] which is responsible for providing a
/// [ComplementCubit] instance to the [ComplementView].
/// {@endtemplate}
class ComplementPage extends StatelessWidget {
  /// {@macro complement_page}
  const ComplementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ComplementCubit(context),
      child: const ComplementView(),
    );
  }
}
