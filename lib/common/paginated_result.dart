import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_result.freezed.dart';

@freezed
class PaginatedResult<T> with _$PaginatedResult<T> {
  const factory PaginatedResult(
    T value, {
    required int currentPage,
    required int totalResults,
  }) = _PaginatedResult;
}
