enum NotificationType { wifi, call, data, custom }

class NotificationModel {
  String title;
  String description;
  String? avatar;
  NotificationType type;
  bool read;

  NotificationModel(
      {required this.type,
      required this.description,
      required this.title,
      this.read = false,
      this.avatar});
}
