part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  UserState(this.allUsers);

  List<UserModel> allUsers;

  @override
  List<Object> get props => [allUsers];
}

class UserInitial extends UserState {
  UserInitial(super.allUsers);
}

class UserLoading extends UserState {
  UserLoading(super.allUsers);
}

class UserComplete extends UserState {
  UserComplete(super.allUsers);
}

class UserError extends UserState {
  UserError(super.allUsers);
}
