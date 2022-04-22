import 'package:flutter_cubit_codebase/infrastructure/architecture/base_repository.dart';

abstract class HomeScreenRepository extends BaseRepository {
  Future<String> getDate();
}
