 import 'package:flutter/material.dart';
import 'package:wasel/core/Animtion/Animtion.dart';
import 'package:wasel/feature/Auth/Login/Screen/Login.dart';
import 'package:wasel/feature/Auth/onpoding/OnbordingScreen.dart';

 class Splach extends StatefulWidget {
   const Splach({super.key});

   @override
   State<Splach> createState() => _SplachState();
 }

 class _SplachState extends State<Splach> {

   @override
  void initState() {
    Future.delayed(Duration(seconds: 3) , (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (c)=>OnboardingScreen()));
    });
    super.initState();
  }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Color(0xffFFFD54),
       body: Center(child: SplashScreen()),
     );
   }
 }
