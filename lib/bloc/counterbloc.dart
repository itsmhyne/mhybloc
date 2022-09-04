import 'package:bloc/bloc.dart';
import 'package:mhybloc/bloc/event/counterevent.dart';

// cubit
// class CounterBloc extends Cubit<int> {
//   CounterBloc() : super(0);

//   void increment() => emit(state - 1);
//   void decrement() => emit(state + 1);
// }

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterEvent>((event, emit) => {
          if (event == CounterEvent.decrement)
            {emit(state - 1)}
          else
            {emit(state + 1)}
        });
  }

  @override
  void onChange(change) {
    print(change);
  }

  @override
  void onError(err, trace) {
    print(err);
    print(trace);
  }

  @override
  void onTransition(transition) {
    print(transition);
  }
}
