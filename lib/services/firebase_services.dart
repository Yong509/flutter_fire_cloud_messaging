import 'dart:developer';
import 'package:cloud_messaging_fire/services/notification.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FirebaseServices {
  Future<String?> getToken() async {
    return await FirebaseMessaging.instance.getToken();
  }

  listenForegroundMessages() {
    FirebaseMessaging.onMessage.listen((message) {
      RemoteNotification? notification = message.notification;
      if (notification != null) {
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              androidNotificationChannel.id,
              androidNotificationChannel.name,
              channelDescription: androidNotificationChannel.description,
              importance: androidNotificationChannel.importance,
              enableLights: androidNotificationChannel.enableLights,
              enableVibration: androidNotificationChannel.enableVibration,
            ),
          ),
        );
      }

      log("${message.notification!.title}");
    });
  }

  Future<void> _backgroundMessage(RemoteMessage message) async {
    log("background message");
  }

  listenBackgroundMessages() {
    FirebaseMessaging.onBackgroundMessage(_backgroundMessage);
  }
}
