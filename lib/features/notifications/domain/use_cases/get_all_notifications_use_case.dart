import 'package:dartz/dartz.dart';
import '../../data/models/notification.dart';
import '../repository/notifications_repository.dart';

import '../../../../shared/util/app_exception.dart';

class GetAllNotificationsUseCase {
  final NotificationRepository notificationRepository;

  GetAllNotificationsUseCase({required this.notificationRepository});

  Future<Either<AppException, List<NotificationModel>>> execute() async {
    return notificationRepository.getNotifications();
  }
}
