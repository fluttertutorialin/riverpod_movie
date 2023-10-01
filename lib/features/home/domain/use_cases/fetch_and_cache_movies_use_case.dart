import 'package:dartz/dartz.dart';
import '../repositories/home_repository.dart';
import '../../../../models/domain/movies.dart';
import '../../../../shared/util/app_exception.dart';

class FetchAndCacheMoviesUseCase {
  final HomeRepository homeRepository;

  FetchAndCacheMoviesUseCase({required this.homeRepository});

  Future<Either<AppException, Movies>> execute(
      {required int page, required String type}) {
    return homeRepository.fetchAndCacheMovies(page: page, type: type);
  }
}
