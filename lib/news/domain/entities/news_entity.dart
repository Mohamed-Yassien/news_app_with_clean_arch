import 'package:equatable/equatable.dart';

class NewsEntity extends Equatable {
  final String title, description, urlToImage;

  const NewsEntity({
    required this.title,
    required this.description,
    required this.urlToImage,
  });

  @override
  List<Object?> get props => [
        title,
        description,
        urlToImage,
      ];
}
