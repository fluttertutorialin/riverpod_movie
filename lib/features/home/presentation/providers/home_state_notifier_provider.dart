import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'state/genre_notifier.dart';
import 'state/genre_state.dart';
import 'state/movie_notifier.dart';
import 'state/movie_state.dart';

final nowShowingMoviesStateNotifier =
    AutoDisposeStateNotifierProvider<MovieNotifier, MovieState>(
        (ref) => MovieNotifier());

final popularMoviesStateNotifier =
    AutoDisposeStateNotifierProvider<MovieNotifier, MovieState>(
        (ref) => MovieNotifier());

final genreStateNotifier =
    AutoDisposeStateNotifierProvider<GenreNotifier, GenreState>(
        (ref) => GenreNotifier()..getGenres());
