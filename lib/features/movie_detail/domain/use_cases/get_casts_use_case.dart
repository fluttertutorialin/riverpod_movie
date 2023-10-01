import 'package:dartz/dartz.dart';
import '../repositories/movie_detail_repository.dart';
import '../../../../models/response/casts_response.dart';
import '../../../../shared/util/app_exception.dart';

class GetCastsUseCase {
  final MovieDetailRepository movieDetailRepository;

  GetCastsUseCase({required this.movieDetailRepository});

  Future<Either<AppException, CastsResponse>> execute(
      {required int movieId}) async {
    return movieDetailRepository.getCasts(id: movieId);
  }
}
