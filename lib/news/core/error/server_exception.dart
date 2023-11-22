import 'package:usama_elgendy_cclean_arch/news/core/error/error_message_model.dart';

class ServerException implements Exception {
  final ErrorMessageModel errorMessageModel;

  ServerException({
    required this.errorMessageModel,
  });
}
