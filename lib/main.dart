import 'package:flutter/material.dart';
import 'package:wasel/Splach.dart';
import 'package:wasel/feature/Acsses.dart';
import 'package:wasel/feature/Auth/SignUp/Screen/Sign%20Up.dart';
import 'package:wasel/feature/Auth/Verification/verification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wasel',
      home: Accss()
    );
  }
}