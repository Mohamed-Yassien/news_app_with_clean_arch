import 'package:usama_elgendy_cclean_arch/news/domain/entities/news_entity.dart';

abstract class NewsStates {}

class NewsInitialState extends NewsStates {}

class GetNewsLoadingState extends NewsStates {}

class GetNewsSuccessState extends NewsStates {
  final List<NewsEntity> newsList;

  GetNewsSuccessState({
    required this.newsList,
  });
}

class GetNewsErrorState extends NewsStates {
  final String errorMessage;

  GetNewsErrorState({
    required this.errorMessage,
  });
}
