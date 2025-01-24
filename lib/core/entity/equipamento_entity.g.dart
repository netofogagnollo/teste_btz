// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipamento_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EquipamentoEntityImpl _$$EquipamentoEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$EquipamentoEntityImpl(
      id: (json['id'] as num?)?.toInt(),
      equipamentoId: (json['equipamento_id'] as num?)?.toInt(),
      uuid: json['uui'] as String?,
      name: json['name'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      userName: json['user_name'] as String?,
      ultimoInventario: json['ultimo_inventario'] == null
          ? null
          : DateTime.parse(json['ultimo_inventario'] as String),
    );

Map<String, dynamic> _$$EquipamentoEntityImplToJson(
        _$EquipamentoEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'equipamento_id': instance.equipamentoId,
      'uui': instance.uuid,
      'name': instance.name,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'ultimo_inventario': instance.ultimoInventario?.toIso8601String(),
    };
