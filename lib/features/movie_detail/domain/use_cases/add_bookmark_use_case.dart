import '../repositories/movie_detail_repository.dart';
import '../../../../models/movie_detail.dart';

class AddBookmarkUseCase {
  final MovieDetailRepository movieDetailRepository;

  AddBookmarkUseCase({required this.movieDetailRepository});

  Future<int> execute(MovieDetail movieDetail) async {
    return movieDetailRepository.bookmarkMovieDetail(movieDetail);
  }
}
