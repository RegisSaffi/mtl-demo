import 'package:flutter/material.dart';
import 'package:mtldemo/models/notification.dart';
import 'package:mtldemo/utils/_utils.dart';

class NotificationLeading extends StatelessWidget {
  final NotificationModel notification;
  const NotificationLeading({Key? key, required this.notification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10),
          image: notification.type == NotificationType.custom
              ? DecorationImage(image: NetworkImage("${notification.avatar}"))
              : null),
      child: notification.type == NotificationType.custom
          ? null
          : Icon(
              getNotificationIcon(notification.type),
              color: Colors.black,
            ),
    );
  }
}
