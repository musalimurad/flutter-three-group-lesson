import 'package:f_three/pages/circle_avatar.dart';
import 'package:f_three/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Main build context");
    return MaterialApp(
      title: "My Flutter app",
      theme: ThemeData(
          primarySwatch: Colors.red,
          textTheme: const TextTheme(
              headline1:
                  TextStyle(color: Colors.blue, fontWeight: FontWeight.bold))),
      debugShowCheckedModeBanner: false,
      home: CircleAvatarWidget(),
    );
  }
}
