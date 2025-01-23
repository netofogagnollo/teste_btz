class UserModel {
  final int? id;
  final String? name;
  final String? email;
  final DateTime? lastLogin;
  final String? uuid;

  const UserModel({
    this.id,
    this.name,
    this.email,
    this.lastLogin,
    this.uuid,
  });
}
