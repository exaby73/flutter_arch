import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_arch/common/failure.dart';
import 'package:flutter_arch/ioc.dart';
import 'package:fpdart/fpdart.dart';

class CustomException implements Exception {
  final String message;

  CustomException(this.message);
}

typedef Runner<T> = FutureOr<T> Function(Dio dio);

Future<Either<Failure, T>> handleHttpErrors<T>({
  required Runner<T> runner,
}) async {
  final Dio dio = getIt();

  try {
    return right(await runner(dio));
  } on DioError catch (e) {
    debugPrint(e.toString());

    final response = e.response;
    final type = e.type;

    switch (type) {
      case DioErrorType.connectTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
      case DioErrorType.cancel:
        return left(const Failure.networkError());
      case DioErrorType.response:
        final statusCode = response!.statusCode ?? 500;
        final statusGroup = statusCode - (statusCode % 100);
        final data = response.data;
        debugPrint(data.toString());

        if (statusGroup == 500) {
          return left(const Failure.serverError());
        }

        if (statusCode == 404) {
          return left(const Failure.notFound());
        }

        if (statusCode == 401) {
          return left(const Failure.unauthorized());
        }

        return left(const Failure.unknown());
      case DioErrorType.other:
        return left(Failure.unknown(e.message));
    }
  } on CustomException catch (e) {
    return left(Failure.unknown(e.message));
  } catch (e) {
    return left(Failure.unknown(e.toString()));
  }
}
