 import 'package:flutter/material.dart';
import 'package:wasel/core/Animtion/animtion.dart';
import 'package:wasel/feature/auth/onpoding/onbording_screen.dart';

 class Splach extends StatefulWidget {
   const Splach({super.key});

   @override
   State<Splach> createState() => _SplachState();
 }

 class _SplachState extends State<Splach> {

   @override
  void initState() async{
     await Future.delayed(Duration(seconds: 3));

     if (!mounted) return;

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (c)=>OnboardingScreen()));
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
