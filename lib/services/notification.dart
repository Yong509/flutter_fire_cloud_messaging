import 'package:flutter_local_notifications/flutter_local_notifications.dart';

late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

AndroidNotificationChannel androidNotificationChannel =
    const AndroidNotificationChannel(
  "high_importance_channel",
  "High Importance Channel",
  description: "For High Importance Testing Channel",
  importance: Importance.max,
  showBadge: true,
  enableVibration: true,
  enableLights: true,
);
