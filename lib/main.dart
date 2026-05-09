import 'package:flutter/material.dart';
import 'package:wasel/Splach.dart';
import 'package:wasel/core/Models/food_model.dart';
import 'package:wasel/feature/Acsses.dart';
import 'package:wasel/feature/Auth/SignUp/Screen/Sign%20Up.dart';
import 'package:wasel/feature/Auth/Verification/ForgetPassword.dart';
import 'package:wasel/feature/Auth/Verification/verification.dart';
import 'package:wasel/feature/Auth/onpoding/OnbordingPage.dart';
import 'package:wasel/feature/Auth/onpoding/OnbordingScreen.dart';
import 'package:wasel/feature/Home/Screens/Food_Details.dart';
import 'package:wasel/feature/Home/Screens/Home1.dart';
import 'package:wasel/feature/Home/Screens/Home2.dart';
import 'package:wasel/feature/Home/Screens/Home3.dart';
import 'package:wasel/feature/Home/Screens/Home4.dart';
import 'package:wasel/feature/Home/Screens/home_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
      title: 'wasel',
      home: Splach(),
    );
  }
}