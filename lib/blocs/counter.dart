import 'package:bloc/bloc.dart';

class CounterBloc extends Cubit<int> {
  CounterBloc() : super(0);

  void plus() => emit(state + 1);

  void min() => emit(state - 1);
}
