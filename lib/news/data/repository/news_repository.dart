import 'package:dartz/dartz.dart';
import 'package:usama_elgendy_cclean_arch/news/core/error/failure.dart';
import 'package:usama_elgendy_cclean_arch/news/core/error/server_exception.dart';
import 'package:usama_elgendy_cclean_arch/news/data/datasource/news_datasource.dart';
import 'package:usama_elgendy_cclean_arch/news/domain/entities/news_entity.dart';
import 'package:usama_elgendy_cclean_arch/news/domain/repository/base_news_repository.dart';

class NewsRepository extends BaseNewsRepository {
  final BaseNewsDataSource baseNewsDataSource;

  NewsRepository(this.baseNewsDataSource);

  @override
  Future<Either<Failure, List<NewsEntity>>> getNews() async {
    final response = await baseNewsDataSource.getNews();
    try {
      return Right(response);
    } on ServerException catch (failure) {
      return Left(
        ServerFailure(
          message: failure.errorMessageModel.message,
        ),
      );
    }
  }
}
