import '../repositories/bookmark_repository.dart';
import '../../../../models/movie_detail.dart';

class RemoveBookmarkUseCase {
  final BookmarkRepository bookmarkRepository;

  RemoveBookmarkUseCase({required this.bookmarkRepository});

  Future<void> execute(MovieDetail movieDetail) async {
    return bookmarkRepository.removeBookmark(movieDetail);
  }
}
