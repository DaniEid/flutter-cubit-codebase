import 'package:flutter_cubit_codebase/domain/repositories/home_screen_repository.dart';
import 'package:flutter_cubit_codebase/infrastructure/architecture/base_usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeScreenUseCase extends BaseUseCase<HomeScreenRepository> {
  HomeScreenUseCase(HomeScreenRepository repository) : super(repository);

  Future<String> getData() async => repository.getDate();
}
