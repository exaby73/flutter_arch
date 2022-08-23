import 'package:flutter_arch/common/failure.dart';
import 'package:flutter_arch/common/paginated_result.dart';
import 'package:flutter_arch/models/article/article.dart';
import 'package:fpdart/fpdart.dart';

abstract class IArticleService {
  Future<Either<Failure, PaginatedResult<Articles>>> getTopHeadlines({
    int page,
  });
}
