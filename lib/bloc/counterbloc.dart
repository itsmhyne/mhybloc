import 'package:bloc/bloc.dart';
import './event/counterevent';

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
}
