import 'package:usama_elgendy_cclean_arch/news/domain/entities/news_entity.dart';

class NewsModel extends NewsEntity {
  const NewsModel({
    required super.title,
    required super.description,
    required super.urlToImage,
    required super.url,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        title: json['title'],
        description: json['description'],
        urlToImage: json['urlToImage'],
        url: json['url'],
      );
}
