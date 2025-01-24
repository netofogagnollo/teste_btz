part of 'login_cubit.dart';

enum Status {
  initial,
  loading,
  loaded,
  failure,
}

class LoginState extends Equatable {
  const LoginState({
    this.status = Status.initial,
    this.login,
  });

  final Status? status;
  final LoginEntity? login;

  LoginState copyWith({
    ValueGetter<Status>? status,
    LoginEntity? login,
  }) {
    return LoginState(
      status: status != null ? status() : this.status,
      login: login ?? this.login,
    );
  }

  @override
  List<dynamic> get props => [
        status,
        login,
      ];
}
