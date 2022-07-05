import 'package:flutter_arch/ioc.dart';
import 'package:flutter_arch/state/article/article_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<BlocProvider> providers = [
  BlocProvider<ArticleCubit>(
    create: (context) => getIt(),
  ),
];
