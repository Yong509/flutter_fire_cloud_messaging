import 'dart:developer';

import 'package:cloud_messaging_fire/screens/my_app.dart';
import 'package:cloud_messaging_fire/services/firebase_services.dart';
import 'package:cloud_messaging_fire/services/notification.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'firebase_options.dart';

Future<void> listenBackgroundMessages(RemoteMessage message) async {
  log("background message");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  AndroidInitializationSettings androidInitializationSettings =
      const AndroidInitializationSettings('@mipmap/ic_launcher');
  InitializationSettings initializationSettings =
      InitializationSettings(android: androidInitializationSettings);

  flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
    onDidReceiveNotificationResponse: (details) {
      log(details.payload!.toString());
    },
  );

  // FirebaseServices().listenBackgroundMessages();

  runApp(const MyApp());
}
