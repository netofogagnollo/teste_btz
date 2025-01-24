// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'equipamento_entity.freezed.dart';
part 'equipamento_entity.g.dart';

@freezed
class EquipamentoEntity with _$EquipamentoEntity {
  const factory EquipamentoEntity({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'equipamento_id') int? equipamentoId,
    @JsonKey(name: 'uui') String? uuid,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'ultimo_inventario') DateTime? ultimoInventario,
  }) = _EquipamentoEntity;

  factory EquipamentoEntity.fromJson(Map<String, dynamic> json) => _$EquipamentoEntityFromJson(json);
}
