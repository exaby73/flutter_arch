import 'package:flutter/material.dart';
import 'package:flutter_arch/common/providers.dart';
import 'package:flutter_arch/config/routes/app_router.dart';
import 'package:flutter_arch/config/theme/theme.dart';
import 'package:flutter_arch/ioc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = getIt<AppRouter>();
    return MaterialApp.router(
      title: 'FLNews',
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
      theme: getIt<AppTheme>().lightTheme,
      builder: (context, child) {
        if (child == null) return const SizedBox.shrink();
        return MultiBlocProvider(providers: providers, child: child);
      },
    );
  }
}
