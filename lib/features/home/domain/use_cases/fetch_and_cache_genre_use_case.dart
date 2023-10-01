import 'package:dartz/dartz.dart';
import '../repositories/home_repository.dart';
import '../../../../models/genres.dart';
import '../../../../shared/util/app_exception.dart';

class FetchAndCacheGenreUseCase {
  final HomeRepository homeRepository;

  FetchAndCacheGenreUseCase({required this.homeRepository});

  Future<Either<AppException, Genres>> execute() {
    return homeRepository.fetchAndCacheGenres();
  }
}
