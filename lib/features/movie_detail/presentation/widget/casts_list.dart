import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../provider/movie_detail_state_notifier.dart';
import '../provider/state/casts_state.dart';
import 'cast_item.dart';

class CastsList extends ConsumerWidget {
  final int id;

  const CastsList({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final castsNotifier = ref.watch(castsStateNotifier(id));
    return castsNotifier.state == CastConcreteState.loading
        ? const Center(child: CircularProgressIndicator())
        : ListView.builder(
            itemCount: castsNotifier.casts.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CastItem(
                cast: castsNotifier.casts[index],
              );
            });
  }
}
