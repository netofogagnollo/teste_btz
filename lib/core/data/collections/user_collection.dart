import 'package:btz/core/entity/user_entity.dart';
import 'package:isar/isar.dart';

part 'user_collection.g.dart';

@collection
class UserCollection {
  Id? id;
  String? name = '';
  String? email = '';
}

UserCollection userEntityToCollection(UserEntity entity) {
  return UserCollection()
    ..id = entity.id
    ..email = entity.email
    ..name = entity.name;
}

UserEntity userCollectionToEntity(UserCollection collection) {
  return UserEntity(
    id: collection.id,
    email: collection.email,
    name: collection.name,
  );
}
