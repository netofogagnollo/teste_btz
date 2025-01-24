// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'equipamento_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EquipamentoEntity _$EquipamentoEntityFromJson(Map<String, dynamic> json) {
  return _EquipamentoEntity.fromJson(json);
}

/// @nodoc
mixin _$EquipamentoEntity {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'equipamento_id')
  int? get equipamentoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'uui')
  String? get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'ultimo_inventario')
  DateTime? get ultimoInventario => throw _privateConstructorUsedError;

  /// Serializes this EquipamentoEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EquipamentoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EquipamentoEntityCopyWith<EquipamentoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipamentoEntityCopyWith<$Res> {
  factory $EquipamentoEntityCopyWith(
          EquipamentoEntity value, $Res Function(EquipamentoEntity) then) =
      _$EquipamentoEntityCopyWithImpl<$Res, EquipamentoEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'equipamento_id') int? equipamentoId,
      @JsonKey(name: 'uui') String? uuid,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'ultimo_inventario') DateTime? ultimoInventario});
}

/// @nodoc
class _$EquipamentoEntityCopyWithImpl<$Res, $Val extends EquipamentoEntity>
    implements $EquipamentoEntityCopyWith<$Res> {
  _$EquipamentoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EquipamentoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? equipamentoId = freezed,
    Object? uuid = freezed,
    Object? name = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? ultimoInventario = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      equipamentoId: freezed == equipamentoId
          ? _value.equipamentoId
          : equipamentoId // ignore: cast_nullable_to_non_nullable
              as int?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      ultimoInventario: freezed == ultimoInventario
          ? _value.ultimoInventario
          : ultimoInventario // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EquipamentoEntityImplCopyWith<$Res>
    implements $EquipamentoEntityCopyWith<$Res> {
  factory _$$EquipamentoEntityImplCopyWith(_$EquipamentoEntityImpl value,
          $Res Function(_$EquipamentoEntityImpl) then) =
      __$$EquipamentoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'equipamento_id') int? equipamentoId,
      @JsonKey(name: 'uui') String? uuid,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'ultimo_inventario') DateTime? ultimoInventario});
}

/// @nodoc
class __$$EquipamentoEntityImplCopyWithImpl<$Res>
    extends _$EquipamentoEntityCopyWithImpl<$Res, _$EquipamentoEntityImpl>
    implements _$$EquipamentoEntityImplCopyWith<$Res> {
  __$$EquipamentoEntityImplCopyWithImpl(_$EquipamentoEntityImpl _value,
      $Res Function(_$EquipamentoEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of EquipamentoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? equipamentoId = freezed,
    Object? uuid = freezed,
    Object? name = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? ultimoInventario = freezed,
  }) {
    return _then(_$EquipamentoEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      equipamentoId: freezed == equipamentoId
          ? _value.equipamentoId
          : equipamentoId // ignore: cast_nullable_to_non_nullable
              as int?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      ultimoInventario: freezed == ultimoInventario
          ? _value.ultimoInventario
          : ultimoInventario // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EquipamentoEntityImpl implements _EquipamentoEntity {
  const _$EquipamentoEntityImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'equipamento_id') this.equipamentoId,
      @JsonKey(name: 'uui') this.uuid,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'user_name') this.userName,
      @JsonKey(name: 'ultimo_inventario') this.ultimoInventario});

  factory _$EquipamentoEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$EquipamentoEntityImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'equipamento_id')
  final int? equipamentoId;
  @override
  @JsonKey(name: 'uui')
  final String? uuid;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  @JsonKey(name: 'ultimo_inventario')
  final DateTime? ultimoInventario;

  @override
  String toString() {
    return 'EquipamentoEntity(id: $id, equipamentoId: $equipamentoId, uuid: $uuid, name: $name, userId: $userId, userName: $userName, ultimoInventario: $ultimoInventario)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EquipamentoEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.equipamentoId, equipamentoId) ||
                other.equipamentoId == equipamentoId) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.ultimoInventario, ultimoInventario) ||
                other.ultimoInventario == ultimoInventario));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, equipamentoId, uuid, name,
      userId, userName, ultimoInventario);

  /// Create a copy of EquipamentoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EquipamentoEntityImplCopyWith<_$EquipamentoEntityImpl> get copyWith =>
      __$$EquipamentoEntityImplCopyWithImpl<_$EquipamentoEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EquipamentoEntityImplToJson(
      this,
    );
  }
}

abstract class _EquipamentoEntity implements EquipamentoEntity {
  const factory _EquipamentoEntity(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'equipamento_id') final int? equipamentoId,
      @JsonKey(name: 'uui') final String? uuid,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'user_name') final String? userName,
      @JsonKey(name: 'ultimo_inventario')
      final DateTime? ultimoInventario}) = _$EquipamentoEntityImpl;

  factory _EquipamentoEntity.fromJson(Map<String, dynamic> json) =
      _$EquipamentoEntityImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'equipamento_id')
  int? get equipamentoId;
  @override
  @JsonKey(name: 'uui')
  String? get uuid;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'user_name')
  String? get userName;
  @override
  @JsonKey(name: 'ultimo_inventario')
  DateTime? get ultimoInventario;

  /// Create a copy of EquipamentoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EquipamentoEntityImplCopyWith<_$EquipamentoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
