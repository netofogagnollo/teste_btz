import 'package:btz/routes/administracao_route.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../routes/home_route.dart';
import '../../routes/login_route.dart';
import '../utils/snack_bar_service.dart';

class AppModule extends Module {
  @override
  void binds(i) => [
        i.addLazySingleton(SnackBarService.new),
      ];

  @override
  void routes(r) => [
        r.module(LoginModule.ROUTE, module: LoginModule()),
        r.module(HomeModule.ROUTE, module: HomeModule()),
        r.module(AdministracaoModule.ROUTE, module: AdministracaoModule()),
      ];
}
