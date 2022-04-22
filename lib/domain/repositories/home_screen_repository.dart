import 'package:flutter_cubit_codebase/infrastructure/architecture/base_repository.dart';

import '../../infrastructure/architecture/data/base_error.dart';
import '../../infrastructure/architecture/data/base_response.dart';

abstract class HomeScreenRepository extends BaseRepository {
  Future<BaseResponse<String, BaseError>> getDate();
}
