import 'package:dartz/dartz.dart';
import 'package:usama_elgendy_cclean_arch/news/core/error/failure.dart';
import 'package:usama_elgendy_cclean_arch/news/domain/entities/news_entity.dart';
import 'package:usama_elgendy_cclean_arch/news/domain/repository/base_news_repository.dart';
import '../../core/base_usecase/base_usecase.dart';

class GetNewsUseCase extends BaseUseCase<List<NewsEntity>> {
  final BaseNewsRepository baseNewsRepository;

  GetNewsUseCase(this.baseNewsRepository);

  @override
  Future<Either<Failure, List<NewsEntity>>> call() async {
    return await baseNewsRepository.getNews();
  }
}
