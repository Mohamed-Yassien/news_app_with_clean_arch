import 'package:get_it/get_it.dart';
import 'package:usama_elgendy_cclean_arch/news/data/datasource/news_datasource.dart';
import 'package:usama_elgendy_cclean_arch/news/data/repository/news_repository.dart';
import 'package:usama_elgendy_cclean_arch/news/domain/repository/base_news_repository.dart';
import 'package:usama_elgendy_cclean_arch/news/domain/use_cases/get_news_usecase.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {

    //CUBITS
    // sl.registerLazySingleton<>(() => null)


    //USECASES
    sl.registerLazySingleton<GetNewsUseCase>(
      () => GetNewsUseCase(
        sl(),
      ),
    );

    //REPOSITIRY
    sl.registerLazySingleton<BaseNewsRepository>(
      () => NewsRepository(
        sl(),
      ),
    );

    //DATASOURCES
    sl.registerLazySingleton<BaseNewsDataSource>(
      () => NewsDataSource(),
    );
  }
}
