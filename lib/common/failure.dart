import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.networkError() = _NetworkError;

  const factory Failure.serverError() = _ServerError;

  const factory Failure.notFound() = _NotFound;

  const factory Failure.unauthorized() = _Unauthorized;

  const factory Failure.unknown([String? message]) = _Unknown;

  const Failure._();

  String get messageOrDefault => when(
        networkError: () => 'Please check your internet connection.',
        serverError: () => 'Something went wrong on the server.',
        notFound: () => 'Not found.',
        unauthorized: () => 'Unauthorized.',
        unknown: (message) => message ?? 'An unknown error occurred.',
      );
}
