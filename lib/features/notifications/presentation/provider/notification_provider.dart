import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'state/notification_state.dart';
import 'state/notifications_notifier.dart';

final notificationStateProvider =
    AutoDisposeStateNotifierProvider<NotificationNotifier, NotificationState>(
        (ref) => NotificationNotifier());
