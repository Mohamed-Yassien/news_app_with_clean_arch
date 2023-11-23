import 'package:dartz/dartz.dart';
import 'package:usama_elgendy_cclean_arch/news/core/error/failure.dart';

abstract class BaseUseCase<T , Parameters> {
  Future<Either<Failure, T>> call(Parameters parameters);
}
