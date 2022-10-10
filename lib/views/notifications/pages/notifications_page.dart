import 'package:flutter/material.dart';
import 'package:mtldemo/utils/_utils.dart';
import 'package:mtldemo/views/notifications/pages/widgets/notification_item.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          var notification = notificationsList[index];
          return NotificationItem(notification: notification);
        },
        separatorBuilder: (context, index) => const Divider(
              height: 1,
              thickness: 1,
            ),
        itemCount: notificationsList.length);
  }
}
