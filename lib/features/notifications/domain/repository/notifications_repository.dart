import 'package:dartz/dartz.dart';
import '../../data/models/notification.dart';
import '../../../../shared/util/app_exception.dart';

abstract class NotificationRepository {
  Future<Either<AppException, List<NotificationModel>>> getNotifications();

  Future<void> clearNotifications();
}
