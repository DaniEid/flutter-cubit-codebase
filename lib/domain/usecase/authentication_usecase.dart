import 'package:flutter_cubit_codebase/domain/repositories/authentication_repository.dart';
import 'package:injectable/injectable.dart';

import '../../infrastructure/architecture/base_usecase.dart';

@injectable
class AuthenticationUseCase extends BaseUseCase<AuthenticationRepository> {
  AuthenticationUseCase(AuthenticationRepository repository)
      : super(repository);
}
