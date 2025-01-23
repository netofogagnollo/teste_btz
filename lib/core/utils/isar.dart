import 'package:btz/core/database/isar_schema_list.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarStart {
  Future<Isar> database() async {
    final dir = await getApplicationDocumentsDirectory();
    var res = await Isar.open(
      schemaList,
      directory: dir.path,
    );
    return res;
  }
}
