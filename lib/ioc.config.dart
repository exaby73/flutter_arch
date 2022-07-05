// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'config/routes/app_router.dart' as _i3;
import 'config/theme/theme.dart' as _i4;
import 'service/article/article_service.dart' as _i6;
import 'service/article/i_article_service.dart' as _i5;
import 'state/article/article_cubit.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.AppRouter>(_i3.AppRouter());
  gh.singleton<_i4.AppTheme>(_i4.AppTheme());
  gh.factory<_i5.IArticleService>(() => _i6.ArticleService());
  gh.singleton<_i7.ArticleCubit>(_i7.ArticleCubit(get<_i5.IArticleService>()));
  return get;
}
