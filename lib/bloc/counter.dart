import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mhybloc/bloc/counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterEventIncrement>((event, emit) {
      emit(state - 1);
    });
    on<CounterEventDecrement>((event, emit) {
      emit(state + 1);
      if (state > 5) {
        ScaffoldMessenger.of(event.context)
            .showSnackBar(const SnackBar(content: Text("warning diatas lima")));
      }
    });
  }

  @override
  void onTransition(Transition<CounterEvent, int> transition) {
    super.onTransition(transition);
    print(transition);
  }
}
