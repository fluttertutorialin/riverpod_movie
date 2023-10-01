import 'package:dartz/dartz.dart';
import '../../../../../models/domain/movies.dart';
import '../../../../../models/genres.dart';
import '../../../../../shared/util/app_exception.dart';

abstract class HomeLocalDataSource {
  Future<void> cacheMovies({required Movies movies});

  Future<void> cacheGenres({required Genres genres});

  Future<Either<AppException, Movies>> getCacheMovies({required String type});

  Future<Either<AppException, Genres>> getGenreCache();
}
