import 'package:dartz/dartz.dart';
import 'package:usama_elgendy_cclean_arch/news/core/error/failure.dart';
import 'package:usama_elgendy_cclean_arch/news/domain/entities/news_entity.dart';

abstract class BaseNewsRepository {
  Future<Either<Failure, List<NewsEntity>>> getNews();
}
