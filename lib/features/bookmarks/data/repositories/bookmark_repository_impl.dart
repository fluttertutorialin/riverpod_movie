import 'package:dartz/dartz.dart';
import '../datasource/local/bookmark_local_datasource.dart';
import '../../domain/repositories/bookmark_repository.dart';
import '../../../../models/movie_detail.dart';
import '../../../../shared/util/app_exception.dart';

class BookmarkRepositoryImpl extends BookmarkRepository {
  BookmarkLocalDataSource bookmarkLocalDataSource;

  BookmarkRepositoryImpl({required this.bookmarkLocalDataSource});

  @override
  Future<Either<AppException, List<MovieDetail>>> getBookmarks() {
    return bookmarkLocalDataSource.getBookMarkMovies();
  }

  @override
  Future<void> removeBookmark(MovieDetail movieDetail) {
    return bookmarkLocalDataSource.removeBookMark(movieDetail);
  }
}
