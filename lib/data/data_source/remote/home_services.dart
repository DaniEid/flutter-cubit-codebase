import 'package:flutter_cubit_codebase/infrastructure/architecture/data/base_error.dart';
import 'package:flutter_cubit_codebase/infrastructure/architecture/data/base_response.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeServices {
  Future<BaseResponse<String, BaseError>> getDate() async {
    await Future.delayed(const Duration(seconds: 3));
    return BaseResponse.completed("Called the API successfully");
  }
}
