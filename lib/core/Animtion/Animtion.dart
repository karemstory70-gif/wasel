import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {

  late AnimationController controller;
  late Animation<double> scale;
  late Animation<double> opacity;
  late Animation<Offset> slide;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    scale = Tween<double>(begin: 0.6, end: 1.1).animate(
      CurvedAnimation(parent: controller, curve: Curves.elasticOut),
    );

    opacity = Tween<double>(begin: 0, end: 1).animate(controller);

    slide = Tween<Offset>(
      begin: Offset(0, 1),
      end: Offset(0, 0),
    ).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeOut),
    );

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFD54),
      body: Center(
        child: FadeTransition(
          opacity: opacity,
          child: SlideTransition(
            position: slide,
            child: ScaleTransition(
              scale: scale,
              child: Image.asset("assets/logo/Screen Shot 2025-10-15 at 11.15.12 PM 1.png" ,width: 200,height: 230,),
            ),
          ),
        ),
      ),
    );
  }
}