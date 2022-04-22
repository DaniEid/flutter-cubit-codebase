import 'package:flutter_cubit_codebase/data/data_source/remote/home_services.dart';
import 'package:flutter_cubit_codebase/domain/repositories/home_screen_repository.dart';
import 'package:injectable/injectable.dart';

///Will be responsible to implement the home repository and having the functionality here

@Injectable(as: HomeScreenRepository)
class HomeScreenRepositoryImpl extends HomeScreenRepository {
  final HomeServices services;

  HomeScreenRepositoryImpl(this.services);

  @override
  Future<String> getDate() => services.getDate();
}
