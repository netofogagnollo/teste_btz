// ignore_for_file: constant_identifier_names

import 'package:btz/core/utils/bloc_config.dart';
import 'package:btz/core/utils/qr_leitor.dart';
import 'package:btz/features/administracao/administracao_page.dart';
import 'package:btz/features/administracao/presentation/bloc/administracao_cubit.dart';
import 'package:btz/features/home/data/models/equipamento_model.dart';
import 'package:btz/features/home/data/repositories/home_repositories_impl.dart';
import 'package:btz/features/home/domain/repository/home_repository.dart';

import 'package:flutter_modular/flutter_modular.dart';

class AdministracaoModule extends Module {
  static const ROUTE = '/adm/';
  static const QR = 'qrcode';
  @override
  void binds(Injector i) {
    i.addSingleton<HomeRepository>(HomeRepositoriesImpl.new);
    i.addSingleton<AdministracaoCubit>(AdministracaoCubit.new,
        config: blocConfig());
  }

  @override
  void routes(RouteManager r) {
    r.child('/', child: (_) => const AdministracaoPage());
    r.child(
      '/qrcode',
      child: (_) => QrLeitor(
        equipamento: r.args.data?['equipamento'] as EquipamentModel,
      ),
    );
  }
}
