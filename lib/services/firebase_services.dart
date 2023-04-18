import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseServices {
  Future<String?> getToken() async {
    return await FirebaseMessaging.instance.getToken();
  }

  listenForegroundMessages() {
    FirebaseMessaging.onMessage.listen((message) {
      log("Foreground message ");
    });
  }

  Future<void> listenBackgroundMessages(RemoteMessage message) async {
    log("background message");
  }
}
