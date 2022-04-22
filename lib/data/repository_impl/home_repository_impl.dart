import 'package:flutter_cubit_codebase/data/data_source/remote/home_services.dart';
import 'package:flutter_cubit_codebase/domain/repositories/home_screen_repository.dart';
import 'package:injectable/injectable.dart';

import '../../infrastructure/architecture/data/base_error.dart';
import '../../infrastructure/architecture/data/base_response.dart';

///Will be responsible to implement the home repository and having the functionality here

@Injectable(as: HomeScreenRepository)
class HomeScreenRepositoryImpl extends HomeScreenRepository {
  final HomeServices services;

  HomeScreenRepositoryImpl(this.services);

  @override
  Future<BaseResponse<String, BaseError>> getDate() => services.getDate();
}
