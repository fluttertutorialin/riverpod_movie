import 'package:dartz/dartz.dart';
import '../repositories/home_repository.dart';
import '../../../../models/domain/movies.dart';
import '../../../../shared/util/app_exception.dart';

class FetchCachedMoviesUseCase {
  final HomeRepository homeRepository;

  FetchCachedMoviesUseCase({required this.homeRepository});

  Future<Either<AppException, Movies>> execute({required String type}) {
    return homeRepository.fetchCachedMovies(type: type);
  }
}
