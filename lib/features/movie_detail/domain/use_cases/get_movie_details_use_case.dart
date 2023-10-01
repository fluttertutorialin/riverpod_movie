import 'package:dartz/dartz.dart';
import '../repositories/movie_detail_repository.dart';
import '../../../../models/movie_detail.dart';
import '../../../../shared/util/app_exception.dart';

class GetMovieDetailsUseCase {
  final MovieDetailRepository movieDetailRepository;

  GetMovieDetailsUseCase({required this.movieDetailRepository});

  Future<Either<AppException, MovieDetail>> execute(
      {required int movieId}) async {
    return movieDetailRepository.getMovie(id: movieId);
  }
}
