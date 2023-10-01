import 'package:dartz/dartz.dart';
import '../../../../../models/movie_detail.dart';
import '../../../../../models/response/casts_response.dart';
import '../../../../../shared/util/app_exception.dart';

abstract class MovieDetailRemoteDataSource {
  Future<Either<AppException, MovieDetail>> getMovie({required int id});

  Future<Either<AppException, CastsResponse>> getCasts({required int id});
}
