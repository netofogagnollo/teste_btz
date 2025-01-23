// import 'package:btz/core/database/isar_schema_list.dart';
// import 'package:flutter_modular/flutter_modular.dart';
// import 'package:isar/isar.dart';
// import 'package:path_provider/path_provider.dart';

// class DatabaseModule extends Module {
//   @override
//   void binds(i) => {
//         i.addLazySingleton<Isar>((i) async {
//           final dir = await getApplicationDocumentsDirectory();
//           await Isar.open(
//             schemaList,
//             directory: dir.path,
//           );
//         }),
//       };
// }
