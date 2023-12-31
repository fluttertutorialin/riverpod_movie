import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'now_showing_card.dart';
import 'shimmer/now_showing_shimmer.dart';
import 'package:go_router/go_router.dart';
import '../providers/home_state_notifier_provider.dart';
import '../../../../app/app_dimens.dart';
import '../../../../routes/app_router.dart';

class NowShowingMovies extends ConsumerWidget {
  final ScrollController scrollController;

  const NowShowingMovies({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nowShowingMoviesState = ref.watch(nowShowingMoviesStateNotifier);
    return SizedBox(
      height: AppDimens.nowShowingCardHeight,
      child: nowShowingMoviesState.hasData
          ? ListView.builder(
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: nowShowingMoviesState.movies.length + 1,
              itemBuilder: (context, index) {
                if (index < nowShowingMoviesState.movies.length) {
                  final movie = nowShowingMoviesState.movies[index];
                  return GestureDetector(
                      onTap: () {
                        context.pushNamed(Routes.movieDetail.name,
                            extra: movie.id);
                      },
                      child: NowShowingMovieCard(movie: movie));
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            )
          : const NowShowingMoviesShimmer(),
    );
  }
}
