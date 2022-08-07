import 'package:bloc/bloc.dart';

class CounterBloc extends Cubit<int> {
  CounterBloc() : super(0);

  void increment() => emit(state + 1);

  void decrement() => emit(state - 1);
}
