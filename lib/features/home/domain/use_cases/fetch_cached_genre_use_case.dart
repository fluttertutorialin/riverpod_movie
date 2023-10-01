import 'package:dartz/dartz.dart';
import '../repositories/home_repository.dart';
import '../../../../models/genres.dart';
import '../../../../shared/util/app_exception.dart';

class FetchCacheGenresUseCase {
  final HomeRepository homeRepository;

  FetchCacheGenresUseCase({required this.homeRepository});

  Future<Either<AppException, Genres>> execute() {
    return homeRepository.fetchCachedGenres();
  }
}
