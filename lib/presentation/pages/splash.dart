import 'package:flutter/material.dart';
import 'package:flutter_arch/config/routes/app_router.dart';
import 'package:flutter_arch/gen/assets.gen.dart';
import 'package:flutter_arch/ioc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SplashPage extends HookWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(
      () {
        Future.delayed(
          const Duration(seconds: 1),
          () => getIt<AppRouter>().pushAndPopUntil(
            const HomeRoute(),
            predicate: (_) => false,
          ),
        );
        return null;
      },
      const [],
    );

    return Scaffold(
      body: Center(
        child: Assets.icon.image(
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
