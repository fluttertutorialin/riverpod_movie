import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'state/bookmark_notifier.dart';
import 'state/bookmark_state.dart';

final bookmarkNotifierProvider =
    AutoDisposeStateNotifierProvider<BookmarkNotifier, BookmarkState>(
        (ref) => BookmarkNotifier());
