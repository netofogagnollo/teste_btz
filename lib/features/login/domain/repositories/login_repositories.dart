import 'package:btz/core/utils/format.dart';
import 'package:btz/features/login/data/models/user_model.dart';
import 'package:btz/features/login/data/repositories/login_repository.dart';

class LoginRepositories extends LoginRepository {
  @override
  Future<UserModel> login(
      {required String email, required String password}) async {
    UserModel user = UserModel();
    var now = DateTime.now();
    if (email != '' && password != '') {
      user = UserModel(
          id: 1,
          name: 'Darci',
          email: email,
          lastLogin: now,
          uuid: Format.formatTimestamp());
    }
    return user;
  }
}
