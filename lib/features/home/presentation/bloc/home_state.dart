import 'package:btz/features/home/data/models/equipamento_model.dart';

sealed class HomeState {}

class LoadingHomeState implements HomeState {
  const LoadingHomeState();
}

class GettedHomeState implements HomeState {
  final List<EquipamentModel> listEquipaments;
  const GettedHomeState(
    this.listEquipaments,
  );
}

class FailureHomeState implements HomeState {
  final String message;
  const FailureHomeState(this.message);
}
