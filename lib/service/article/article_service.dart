import 'package:flutter_arch/common/failure.dart';
import 'package:flutter_arch/common/paginated_result.dart';
import 'package:flutter_arch/common/utils/handle_http_errors.dart';
import 'package:flutter_arch/models/article/article.dart';
import 'package:flutter_arch/service/article/i_article_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IArticleService)
class ArticleService implements IArticleService {
  const ArticleService();

  @override
  Future<Either<Failure, PaginatedResult<Articles>>> getTopHeadlines(
      {int page = 1}) {
    return handleHttpErrors(
      runner: (dio) async {
        final response = await dio.get<Map>(
          '/top-headlines',
          queryParameters: {'country': 'in', 'page': page},
        );
        final body = response.data;
        if (body == null) throw CustomException('Body is null');

        final articles = body['articles'] as List;
        final totalResults = body['totalResults'] as int;
        return PaginatedResult(
          [
            for (final article in articles.cast<Map>())
              Article.fromJson(article.cast())
          ],
          currentPage: page,
          totalResults: totalResults,
        );
      },
    );
  }
}
