import 'package:btz/core/utils/bloc_config.dart';
import 'package:btz/features/login/data/repositories/login_repository.dart';
import 'package:btz/features/login/domain/repositories/login_repositories.dart';
import 'package:btz/features/login/presentation/bloc/login_cubit.dart';
import 'package:btz/features/login/presentation/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends Module {
  // ignore: constant_identifier_names
  static const ROUTE = '/login/';

  @override
  void binds(i) {
    i.addSingleton<LoginRepository>(LoginRepositories.new);
    i.addSingleton<LoginCubit>(LoginCubit.new, config: blocConfig());
  }

  @override
  void routes(r) {
    r.child('/', child: (_) => const LoginPage());
  }
}
