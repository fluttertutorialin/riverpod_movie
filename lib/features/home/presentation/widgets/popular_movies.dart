import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/home_state_notifier_provider.dart';
import 'package:go_router/go_router.dart';
import 'popular_card.dart';
import 'shimmer/popular_shimmer.dart';
import '../../../../routes/app_router.dart';

class PopularMovies extends ConsumerWidget {
  const PopularMovies({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final popularMoviesState = ref.watch(popularMoviesStateNotifier);
    return popularMoviesState.hasData
        ? SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
            if (index < popularMoviesState.movies.length) {
              final movie = popularMoviesState.movies[index];
              return GestureDetector(
                  onTap: () {
                    context.pushNamed(Routes.movieDetail.name, extra: movie.id);
                  },
                  child: PopularMovie(movie: movie));
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }, childCount: popularMoviesState.movies.length + 1))
        : const SliverFillRemaining(
            hasScrollBody: true, child: PopularMoviesShimmer());
  }
}
