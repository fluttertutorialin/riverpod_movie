import 'package:dartz/dartz.dart';
import '../repositories/bookmark_repository.dart';
import '../../../../models/movie_detail.dart';
import '../../../../shared/util/app_exception.dart';

class GetBookmarksUseCase {
  final BookmarkRepository bookmarkRepository;

  GetBookmarksUseCase({required this.bookmarkRepository});

  Future<Either<AppException, List<MovieDetail>>> execute() async {
    return bookmarkRepository.getBookmarks();
  }
}
