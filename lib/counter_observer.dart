import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

class CounterObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('{bloc.runTime} $change');
    super.onChange(bloc, change);
  }
}
