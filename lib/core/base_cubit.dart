import 'package:bloc/bloc.dart';

abstract class BaseCubit<State> extends BlocBase<State> {
  BaseCubit(super.initialState);

  void e(State state) {
    if (!isClosed) {
      emit(state);
    }
  }
}
