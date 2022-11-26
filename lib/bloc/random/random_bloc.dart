import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'random_event.dart';
part 'random_state.dart';

class RandomBloc extends Bloc<RandomEvent, RandomState> {
  RandomBloc() : super(RandomInitial()) {
    on<RandomEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
