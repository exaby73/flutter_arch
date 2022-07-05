import 'package:flutter_arch/common/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_state.freezed.dart';

@freezed
class SingleState<T> with _$SingleState<T> {
  const factory SingleState.loading() = _Loading;

  const factory SingleState.success(T value) = _Success;

  const factory SingleState.failure(Failure failure) = _Failure;
}
