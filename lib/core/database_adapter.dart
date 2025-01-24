import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

@Singleton(order: -100) // ignore:
class DatabaseAdapter {
  final Isar _isar;
  DatabaseAdapter(this._isar);
  Isar get isar => _isar;
}
