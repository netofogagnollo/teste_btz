import 'package:btz/core/database_adapter.dart';
import 'package:isar/isar.dart';

class BaseLocalSource {
  final Isar isar;
  BaseLocalSource(DatabaseAdapter isarAdapter) : isar = isarAdapter.isar;
}
