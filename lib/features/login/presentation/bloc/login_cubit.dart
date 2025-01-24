import 'package:btz/core/base_cubit.dart';
import 'package:btz/core/entity/login_entity.dart';
import 'package:btz/features/login/domain/usecases/add_mock_usecase.dart';
import 'package:btz/features/login/domain/usecases/send_login_usecase.dart';
import 'package:btz/injection_container.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'login_state.dart';

LoginCubit createLoginCubit() {
  return LoginCubit(
    sl(),
    sl(),
  );
}

class LoginCubit extends BaseCubit<LoginState> {
  final SendLoginUsecase sendLoginUsecase;
  final AddMockUsecase addMockUsecase;
  LoginCubit(this.sendLoginUsecase, this.addMockUsecase) : super(const LoginState());

  void init() {
    e(state.copyWith(status: () => Status.initial));
  }

  void setLogin(LoginEntity login) {
    e(state.copyWith(login: login));
  }

  void addMock() async {
    await addMockUsecase();
  }

  void loading() async {
    e(state.copyWith(status: () => Status.loading));
    if (state.login != null) {
      await sendLoginUsecase(state.login!);
    }
    e(state.copyWith(status: () => Status.loaded));
  }

  void failure() {
    e(state.copyWith(status: () => Status.failure));
  }
}
