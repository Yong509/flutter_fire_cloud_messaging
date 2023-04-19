import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseServices {
  Future<String?> getToken() async {
    return await FirebaseMessaging.instance.getToken();
  }

  listenForegroundMessages() {
    FirebaseMessaging.onMessage.listen((message) {
      log("Foreground message ${message.notification!.title} ${message.notification!.body}");
    });
  }

  Future<void> _backgroundMessage(RemoteMessage message) async {
    log("background message");
  }

  listenBackgroundMessages() {
    FirebaseMessaging.onBackgroundMessage(_backgroundMessage);
  }
}
