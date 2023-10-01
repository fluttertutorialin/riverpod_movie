import 'package:dartz/dartz.dart';
import '../../models/notification.dart';
import '../../../../../shared/util/app_exception.dart';

abstract class NotificationsLocalDataSource {
  Future<Either<AppException, List<NotificationModel>>> getNotifications();

  Future<void> clearNotifications();
}
