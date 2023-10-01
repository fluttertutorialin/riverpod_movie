import '../repositories/movie_detail_repository.dart';
import '../../../../models/movie_detail.dart';

class RemoveBookmarkUseCase {
  final MovieDetailRepository movieDetailRepository;

  RemoveBookmarkUseCase({required this.movieDetailRepository});

  Future<bool> execute(MovieDetail movieDetail) async {
    return movieDetailRepository.removeBookmark(movieDetail);
  }
}
