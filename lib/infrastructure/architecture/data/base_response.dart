import 'package:flutter_cubit_codebase/infrastructure/architecture/data/base_error.dart';

///Will represent the response from the data source
///will hold the success data and error data
class BaseResponse<T, E extends BaseError> {
  T? data;
  E? error;
  bool success;

  BaseResponse.completed(this.data) : success = true;

  BaseResponse.error(this.error) : success = false;
}
