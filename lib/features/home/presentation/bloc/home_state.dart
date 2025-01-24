part of 'home_cubit.dart';

enum Status {
  initial,
  loading,
  loaded,
  failure,
}

class HomeState extends Equatable {
  const HomeState({
    this.status = Status.initial,
    this.equipamentos,
    this.equipamento,
    this.usuario,
    this.users,
  });

  final Status? status;
  final List<EquipamentoEntity>? equipamentos;
  final EquipamentoEntity? equipamento;
  final LoginEntity? usuario;
  final List<UserEntity>? users;

  HomeState copyWith({
    ValueGetter<Status>? status,
    List<EquipamentoEntity>? equipamentos,
    EquipamentoEntity? equipamento,
    LoginEntity? usuario,
    List<UserEntity>? users,
  }) {
    return HomeState(
      status: status != null ? status() : this.status,
      equipamentos: equipamentos ?? this.equipamentos,
      equipamento: equipamento ?? this.equipamento,
      usuario: usuario ?? this.usuario,
      users: users ?? this.users,
    );
  }

  @override
  List<dynamic> get props => [
        status,
        equipamentos,
        equipamento,
        usuario,
        users,
      ];
}
