part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class AddUserEvent extends UserEvent {
  // constructor
  AddUserEvent(this.userModel);

  final UserModel userModel;
}

class DeleteUserEvent extends UserEvent {
  // constructor
  DeleteUserEvent(this.userModel);

  final UserModel userModel;
}
