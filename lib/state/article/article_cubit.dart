import 'package:flutter_arch/common/single_state.dart';
import 'package:flutter_arch/models/article/article.dart';
import 'package:flutter_arch/service/article/i_article_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'article_cubit.freezed.dart';
part 'article_state.dart';

@Singleton()
class ArticleCubit extends Cubit<ArticleState> {
  ArticleCubit(this._articleService) : super(ArticleState.initial());

  final IArticleService _articleService;

  Future<void> getTopHeadlines() async {
    final failureOrArticles = await _articleService.getTopHeadlines();
    final newState = failureOrArticles.fold<SingleState<List<Article>>>(
      $SingleState.failure,
      $SingleState.success,
    );

    emit(state.copyWith(topHeadlines: newState));
  }
}
