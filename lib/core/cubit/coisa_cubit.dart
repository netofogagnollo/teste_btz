import 'package:bloc/bloc.dart';
import 'package:btz/injection_container.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

part 'coisa_state.dart';

// CoisaCubit createProdutoCubit() {
//   final isar = sl<Isar>(); // Injetando o Isar a partir do GetIt
//   return CoisaCubit(isar);
// }

CoisaCubit createProdutoCubit() {
  return CoisaCubit(
    sl(),
  );
}

class CoisaCubit extends Cubit<CoisaState> {
  final Isar isar;
  CoisaCubit(
    this.isar,
  ) : super(const CoisaState());
}
