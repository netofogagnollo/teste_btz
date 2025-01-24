// 5 GB
// const defaultIsarMaxDatabaseSize = 5 * 1024;

// 512 MB
import 'package:btz/core/data/collections/equipamento_collection.dart';
import 'package:btz/core/data/collections/login_collection.dart';
import 'package:btz/core/data/collections/user_collection.dart';
import 'package:isar/isar.dart';

const defaultIsarMaxDatabaseSize = 512;
const List<CollectionSchema> schemaList = [
  LoginCollectionSchema,
  EquipamentoCollectionSchema,
  UserCollectionSchema,
];
