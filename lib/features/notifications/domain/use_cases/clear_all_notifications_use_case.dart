import '../repository/notifications_repository.dart';

class ClearAllNotificationsUseCase {
  final NotificationRepository notificationRepository;

  ClearAllNotificationsUseCase({required this.notificationRepository});

  Future<void> execute() async {
    return notificationRepository.clearNotifications();
  }
}
