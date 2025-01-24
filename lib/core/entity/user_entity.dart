// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

//these files will be built by freezed with the help of the build runner command in terminal:
//fvm dart run build_runner build --delete-conflicting-outputs
//Another way to run this command is execute in the terminal
//the bash file: ./fbuilder.sh present in root directory of this project.
//detail for prefix fvm: Use it if you have installed the fvm for use in flutter.
part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
