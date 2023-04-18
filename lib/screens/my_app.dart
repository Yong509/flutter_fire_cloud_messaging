import 'package:cloud_messaging_fire/screens/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cloud messaging demo",
      home: Home(),
    );
  }
}
