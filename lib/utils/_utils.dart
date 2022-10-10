import 'package:flutter/material.dart';
import 'package:mtldemo/models/notification.dart';

IconData getNotificationIcon(NotificationType type) {
  var icon = Icons.call;
  switch (type) {
    case NotificationType.wifi:
      icon = Icons.wifi;
      break;
    case NotificationType.call:
      icon = Icons.call_outlined;
      break;
    case NotificationType.data:
      icon = Icons.compare_arrows;
      break;
    case NotificationType.custom:
      icon = Icons.circle;
      break;
  }
  return icon;
}

var notificationsList = [
  NotificationModel(
      type: NotificationType.call,
      description: "Now  .  Wallet Recharge ",
      title: "Recharge of K200 has been successful."),
  NotificationModel(
      type: NotificationType.data,
      description: "4h ago  .  Me2U ",
      title: "Congratulations, You have sent K500 to John Doe Successfully."),
  NotificationModel(
      type: NotificationType.custom,
      description: "1d ago  .  Data Bundle",
      avatar:
          "https://magazine.utdallas.edu/files/2018/10/news_snowball_earth.jpg",
      title:
          "Congratulations, You have have purchased 15GB Minute Lite Successfully.",
      read: true),
  NotificationModel(
      type: NotificationType.wifi,
      description: "4h ago  .  Data Bundle",
      title:
          "Your 15GB Minute Lite will expire soon, renew to enjoy the best data experiences.",
      read: true),
];
