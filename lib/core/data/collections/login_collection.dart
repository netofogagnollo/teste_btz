import 'package:btz/core/entity/login_entity.dart';
import 'package:isar/isar.dart';

part 'login_collection.g.dart';

@collection
class LoginCollection {
  Id? id;
  int? userId;
  String? name;
  String? email;
  String? token;
  DateTime? lastLogin;
}

LoginCollection loginEntityToCollection(LoginEntity entity) {
  return LoginCollection()
    ..id = entity.id
    ..userId = entity.userId
    ..email = entity.email
    ..token = entity.token
    ..name = entity.name
    ..lastLogin = entity.lastLogin;
}

LoginEntity loginCollectionToEntity(LoginCollection collection) {
  return LoginEntity(
    id: collection.id,
    userId: collection.userId,
    email: collection.email,
    token: collection.token,
    name: collection.name,
    lastLogin: collection.lastLogin,
  );
}
