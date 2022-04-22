import 'package:flutter_cubit_codebase/domain/usecase/home_screen_usecase.dart';
import 'package:flutter_cubit_codebase/infrastructure/architecture/bloc/base_cubit.dart';
import 'package:flutter_cubit_codebase/infrastructure/architecture/bloc/base_state.dart';

///Home Cubit that will have the repo and all the requests
class HomeScreenCubit extends BaseCubit {
  HomeScreenCubit(this.useCase) : super(InitialState());

  final HomeScreenUseCase useCase;

  Future<void> getDate() async {
    emit(LoadingState());
    final response = await useCase.getData();
    if (response.success) {
      emit(SuccessState<String>(response.data!));
    } else {
      emit(FailureState(response.error));
    }
  }
}
