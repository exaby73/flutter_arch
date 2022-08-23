import 'package:flutter/foundation.dart';
import 'package:flutter_arch/common/data_state.dart';
import 'package:flutter_arch/common/paginated_result.dart';
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

  Future<void> getTopHeadlines({required int page}) async {
    if (page == 1) {
      emit(state.copyWith(topHeadlines: const DataState.loading()));
    }

    final failureOrArticles = await _articleService.getTopHeadlines(page: page);

    final newState =
        failureOrArticles.fold<DataState<PaginatedResult<Articles>>>(
      DataState.failure,
      DataState.success,
    );

    state.topHeadlines.maybeWhen(
      success: (result) {
        debugPrint(page.toString());

        emit(
          state.copyWith(
            topHeadlines: DataState.success(
              result.copyWith(
                currentPage: page,
                value: [
                  ...result.value,
                  ...newState.maybeWhen(
                    success: (r) => r.value,
                    orElse: () => [],
                  ),
                ],
              ),
            ),
          ),
        );
      },
      orElse: () {
        emit(state.copyWith(topHeadlines: newState));
      },
    );
  }
}
