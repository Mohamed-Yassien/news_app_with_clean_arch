import 'package:dio/dio.dart';
import 'package:usama_elgendy_cclean_arch/news/core/error/error_message_model.dart';
import 'package:usama_elgendy_cclean_arch/news/core/error/server_exception.dart';
import 'package:usama_elgendy_cclean_arch/news/core/network/api_constance.dart';
import 'package:usama_elgendy_cclean_arch/news/data/models/news_model.dart';

abstract class BaseNewsDataSource {
  Future<List<NewsModel>> getNews();
}

class NewsDataSource extends BaseNewsDataSource {
  @override
  Future<List<NewsModel>> getNews() async {
    final response = await Dio().get(ApiConstance.getNewsUrl);
    if (response.statusCode == 200) {
      return List<NewsModel>.from(
        (response.data['articles'] as List).map(
          (e) => NewsModel.fromJson(e),
        ),
      );
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(
          response.data,
        ),
      );
    }
  }
}
