import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:usama_elgendy_cclean_arch/news/domain/entities/news_entity.dart';
import 'package:usama_elgendy_cclean_arch/news/domain/use_cases/get_news_usecase.dart';
import 'package:usama_elgendy_cclean_arch/news/presentation/controllers/news_states.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit(this.getNewsUseCase) : super(NewsInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);

  GetNewsUseCase getNewsUseCase;

  List<NewsEntity> newsList = [];

  Future<void> getNews() async {
    emit(GetNewsLoadingState());
    final response = await getNewsUseCase(NoParameters());
    response.fold(
      (l) => emit(
        GetNewsErrorState(
          errorMessage: l.message,
        ),
      ),
      (r) {
        newsList = r;
        emit(
          GetNewsSuccessState(
            newsList: r,
          ),
        );
      },
    );
  }
}
