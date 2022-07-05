import 'package:flutter_arch/common/failure.dart';
import 'package:flutter_arch/models/article/article.dart';
import 'package:fpdart/fpdart.dart';

abstract class IArticleService {
  Future<Either<Failure, List<Article>>> getTopHeadlines();
}
