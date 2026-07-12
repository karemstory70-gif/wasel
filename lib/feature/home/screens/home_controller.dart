import 'package:flutter/material.dart';
import 'package:wasel/feature/Home/Screens/home1.dart';
import 'package:wasel/feature/Home/Screens/home2.dart';
import 'package:wasel/feature/Home/Screens/home3.dart';

class HomeController extends StatefulWidget {
  const HomeController({super.key});

  @override
  State<HomeController> createState() => _HomeControllerState();
}

class _HomeControllerState extends State<HomeController> {

  int currentIndex = 0;

  final List<Widget> screens = [
    Home1(),
    Home2(),
    Home3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],

      // 👇 ده بس علشان تجرب التنقل
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentIndex = (currentIndex + 1) % 3;
          });
        },
        child: Icon(Icons.swap_horiz),
      ),
    );
  }
}