import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_arch/presentation/pages/home/home.dart';
import 'package:flutter_arch/presentation/pages/splash.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@Singleton()
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(initial: true, page: SplashPage, path: '/'),
    AutoRoute(page: HomePage, path: '/home'),
  ],
)
class AppRouter extends _$AppRouter {}
