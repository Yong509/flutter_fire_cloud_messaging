import 'dart:developer';

import 'package:cloud_messaging_fire/screens/my_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

Future<void> listenBackgroundMessages(RemoteMessage message) async {
  log("background message");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseMessaging.onBackgroundMessage(listenBackgroundMessages);

  runApp(const MyApp());
}
