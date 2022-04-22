import 'package:flutter_cubit_codebase/domain/repositories/home_screen_repository.dart';
import 'package:flutter_cubit_codebase/infrastructure/architecture/base_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../infrastructure/architecture/data/base_error.dart';
import '../../infrastructure/architecture/data/base_response.dart';

@injectable
class HomeScreenUseCase extends BaseUseCase<HomeScreenRepository> {
  HomeScreenUseCase(HomeScreenRepository repository) : super(repository);

  Future<BaseResponse<String, BaseError>> getData() async =>
      repository.getDate();
}
