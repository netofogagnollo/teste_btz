import 'package:btz/features/login/data/models/user_model.dart';

sealed class LoginState {}

class LoadingState implements LoginState {
  const LoadingState();
}

class GettedUserState implements LoginState {
  final UserModel user;
  const GettedUserState(this.user);
}

class FailureUserState implements LoginState {
  final String message;
  const FailureUserState(this.message);
}
