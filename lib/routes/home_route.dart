// ignore_for_file: constant_identifier_names

import 'package:btz/core/utils/bloc_config.dart';
import 'package:btz/core/utils/qr_leitor.dart';
import 'package:btz/features/home/data/models/equipamento_model.dart';
import 'package:btz/features/home/data/repositories/home_repositories_impl.dart';
import 'package:btz/features/home/domain/repository/home_repository.dart';
import 'package:btz/features/home/presentation/bloc/home_cubit.dart';

import '../features/home/home_page.dart';

import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  static const ROUTE = '/home/';
  static const QR = 'qrcode';
  @override
  void binds(Injector i) {
    i.addSingleton<HomeRepository>(HomeRepositoriesImpl.new);
    i.addSingleton<HomeCubit>(HomeCubit.new, config: blocConfig());
  }

  @override
  void routes(RouteManager r) {
    r.child('/', child: (_) => const HomePage());
    r.child(
      '/qrcode',
      child: (_) => QrLeitor(
        equipamento: r.args.data?['equipamento'] as EquipamentModel,
      ),
    );
  }
}
