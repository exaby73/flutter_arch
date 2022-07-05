// ignore_for_file: prefer_const_constructors

part of 'article_cubit.dart';

@freezed
class ArticleState with _$ArticleState {
  const factory ArticleState({
    required SingleState<List<Article>> topHeadlines,
  }) = _ArticleState;

  factory ArticleState.initial() {
    return ArticleState(
      topHeadlines: SingleState.loading(),
    );
  }
}
