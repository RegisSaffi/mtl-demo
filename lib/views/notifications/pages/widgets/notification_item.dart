import 'package:flutter/material.dart';
import 'package:mtldemo/models/notification.dart';

import 'notification_leading.dart';

class NotificationItem extends StatelessWidget {
  final NotificationModel notification;
  const NotificationItem({Key? key, required this.notification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      tileColor: notification.read
          ? null
          : Theme.of(context).primaryColor.withOpacity(.15),
      leading: NotificationLeading(
        notification: notification,
      ),
      title: Text(
        notification.title,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Text(notification.description),
      ),
    );
  }
}
