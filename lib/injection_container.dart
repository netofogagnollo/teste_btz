import 'package:beamer/beamer.dart';
import 'package:btz/configs/constants.dart';
import 'package:btz/features/home/presentation/bloc/home_cubit.dart';
import 'package:btz/getit_injector.dart';
import 'package:btz/router/routes.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'core/isar_schema_list.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.allowReassignment = true;

  // ignore: unused_local_variable
  var tempDir = await getTemporaryDirectory();
  var appDir = await getApplicationDocumentsDirectory();

  var isar = await Isar.open(
    schemaList,
    name: AppConstants.DATABASE_NAME,
    directory: appDir.path,
    inspector: true,
    maxSizeMiB: defaultIsarMaxDatabaseSize,
  );

  // DATABASES
  sl.registerSingleton<Isar>(isar);

  // ROUTER
  sl.registerSingleton<BeamerDelegate>(routerCreate(isar));
  sl.registerSingleton(() => HomeCubit(sl(), sl(), sl(), sl()));
  configureDependencies();
}
