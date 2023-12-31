import 'package:equatable/equatable.dart';

class NewsEntity extends Equatable {
  final String title, description, urlToImage ,url;

  const NewsEntity({
    required this.title,
    required this.description,
    required this.urlToImage,
    required this.url,
  });

  @override
  List<Object?> get props => [
        title,
        description,
        urlToImage,
        url,
      ];
}
