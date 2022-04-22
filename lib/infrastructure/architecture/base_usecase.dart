import 'base_repository.dart';

abstract class BaseUseCase<T extends BaseRepository> {
  final T repository;

  BaseUseCase(this.repository);
}
