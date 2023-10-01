import 'package:dartz/dartz.dart';
import '../../../../models/movie_detail.dart';
import '../../../../shared/util/app_exception.dart';

abstract class BookmarkRepository {
  Future<Either<AppException, List<MovieDetail>>> getBookmarks();

  Future<void> removeBookmark(MovieDetail movieDetail);
}
