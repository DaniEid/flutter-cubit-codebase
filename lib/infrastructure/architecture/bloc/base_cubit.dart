import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_codebase/infrastructure/architecture/bloc/base_state.dart';

class BaseCubit extends Cubit<BaseState> {
  BaseCubit(initialState) : super(initialState);
}
