import 'package:equatable/equatable.dart';
import 'package:flutter_cubit_codebase/infrastructure/architecture/data/base_error.dart';

abstract class BaseState extends Equatable {}

///The first state of the bloc
class InitialState extends BaseState {
  InitialState();

  @override
  List get props => [];
}

///To indicate if there is a request was sent to the server or not
class LoadingState extends BaseState {
  @override
  List get props => [];
}

///Will represent the success which will be emitted to the bloc
class SuccessState<T> extends BaseState {
  final T response;

  SuccessState(
    this.response,
  );
  @override
  List<T> get props => [response];
}

///Will represent the failure which will be emitted to the bloc
class FailureState<T extends BaseError> extends BaseState {
  final T error;
  FailureState(
    this.error,
  );

  @override
  List<T> get props => [error];
}
