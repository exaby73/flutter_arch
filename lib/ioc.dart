import 'package:dio/dio.dart';
import 'package:flutter_arch/config/env.dart';
import 'package:flutter_arch/ioc.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureIoc() {
  getIt.registerSingleton<Dio>(
    Dio(
      BaseOptions(
        baseUrl: Env.baseUrl,
        queryParameters: {'apiKey': Env.apiKey},
      ),
    ),
  );
  $initGetIt(getIt);
}
