import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../models/user.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial([])) {
    // add user
    on<AddUserEvent>((event, emit) {
      try {
        emit(UserLoading(state.allUsers));
        state.allUsers.add(event.userModel);
        emit(UserComplete(state.allUsers));
      } catch (e) {
        emit(UserError(state.allUsers));
      }
    });
    //del user
    on<DeleteUserEvent>((event, emit) {
      try {
        emit(UserLoading(state.allUsers));
        state.allUsers.removeWhere((element) => element == event.userModel);
        emit(UserComplete(state.allUsers));
      } catch (e) {
        emit(UserError(state.allUsers));
      }
    });
  }
}
