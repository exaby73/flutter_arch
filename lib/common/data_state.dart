import 'package:flutter_arch/common/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_state.freezed.dart';

@freezed
class DataState<T> with _$DataState<T> {
  const factory DataState.loading() = _Loading;

  const factory DataState.success(T value) = _Success;

  const factory DataState.failure(Failure failure) = _Failure;
}
