import 'package:dartz/dartz.dart';
import '../../../../../models/movie_detail.dart';
import '../../../../../shared/util/app_exception.dart';

abstract class BookmarkLocalDataSource {
  Future<Either<AppException, List<MovieDetail>>> getBookMarkMovies();
  Future<void> removeBookMark(MovieDetail movieDetail);
}
