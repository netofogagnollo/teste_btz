import 'dart:developer';

import 'package:btz/features/login/data/repositories/login_repository.dart';
import 'package:btz/features/login/presentation/bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository repository;
  LoginCubit(this.repository) : super(const LoadingState());

  loginUser({String? email, String? password}) async {
    emit(LoadingState());
    try {
      var user = await repository.login(email: email!, password: password!);
      if (user.id != null) {
        emit(GettedUserState(user));
      }
    } catch (e) {
      log('$e');
      emit(FailureUserState('erro ao logar no aplicativo'));
    }
  }
}
