import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  // CounterCubit(super.initialState);
  CounterCubit({this.inisialData = 0}) : super(inisialData);

  int inisialData;
  int? current;
  int? next;

  void increment() {
    emit(state + 1);
  }

  void decrement() {
    emit(state - 1);
  }

  // memantau perubahan

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    current = change.currentState;
    next = change.nextState;
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
  }
}
