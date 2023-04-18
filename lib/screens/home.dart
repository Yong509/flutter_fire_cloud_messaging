import 'dart:developer';

import 'package:cloud_messaging_fire/services/firebase_services.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();

    Future<String?> token = FirebaseServices().getToken();
    token.then((value) => log(value!));

    FirebaseServices().listenForegroundMessages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cloud messaging demo"),
      ),
      body: Container(),
    );
  }
}
