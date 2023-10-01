import 'package:dartz/dartz.dart';
import '../datasource/local/notifications_local_datasource.dart';
import '../models/notification.dart';
import '../../domain/repository/notifications_repository.dart';
import '../../../../shared/util/app_exception.dart';

class NotificationRepositoryImpl extends NotificationRepository {
  NotificationsLocalDataSource notificationsLocalDataSource;

  NotificationRepositoryImpl({required this.notificationsLocalDataSource});

  @override
  Future<void> clearNotifications() {
    return notificationsLocalDataSource.clearNotifications();
  }

  @override
  Future<Either<AppException, List<NotificationModel>>> getNotifications() {
    return notificationsLocalDataSource.getNotifications();
  }
}
