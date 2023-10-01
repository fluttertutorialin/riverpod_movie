import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'casts_state.dart';
import '../../../domain/use_cases/get_casts_use_case.dart';
import '../../../../../di/Injector.dart';
import '../../../../../models/cast.dart';
import '../../../../../models/response/casts_response.dart';
import '../../../../../shared/util/app_exception.dart';

class CastsNotifier extends StateNotifier<CastsState> {
  final GetCastsUseCase _getCastsUseCase = injector.get<GetCastsUseCase>();

  CastsNotifier() : super(const CastsState.initial());

  bool get isFetching => state.state != CastConcreteState.loading;

  Future<void> getCasts({required int id}) async {
    if (isFetching) {
      state = state.copyWith(
        state: CastConcreteState.loading,
        isLoading: true,
      );
      final response = await _getCastsUseCase.execute(movieId: id);
      updateStateFromGetCastsResponse(response);
    }
  }

  void updateStateFromGetCastsResponse(
      Either<AppException, CastsResponse<dynamic>> response) {
    response.fold((failure) {
      state = state.copyWith(
        state: CastConcreteState.failure,
        message: failure.message,
        hasData: false,
        isLoading: false,
      );
    }, (results) {
      final casts = results.casts.map((e) => Cast.fromJson(e)).toList();
      state = state.copyWith(
          state: CastConcreteState.loaded,
          casts: casts,
          hasData: false,
          message: casts.isEmpty ? 'no casts found' : '',
          isLoading: false);
    });
  }
}
