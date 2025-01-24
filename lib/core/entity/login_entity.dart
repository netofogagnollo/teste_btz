// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_entity.freezed.dart';
part 'login_entity.g.dart';

@freezed
class LoginEntity with _$LoginEntity {
  const factory LoginEntity({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'token') String? token,
    @JsonKey(name: 'last_login') DateTime? lastLogin,
  }) = _LoginEntity;

  factory LoginEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginEntityFromJson(json);
}
