import 'package:bloc/bloc.dart';

/// {@template complemen_observer}
/// [BlocObserver] for the complemen application which
/// observes all state changes.
/// {@endtemplate}
class ComplementObserver extends BlocObserver {
  /// {@macro complemen_observer}
  const ComplementObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    // ignore: avoid_print
    print('${bloc.runtimeType} $change');
  }
}