import 'package:flutter/material.dart';
import 'package:wasel/feature/Auth/Login/Screen/Login.dart';
import 'package:wasel/feature/Auth/onpoding/dlivery.dart';

import '../../../core/Models/Models.dart';
import 'OnbordingPage.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  final List<OnboardingModel> pages = [
    OnboardingModel(
      image: "assets/images/Rectangle 4177.png",
      title: "All your favorites",
      description:
      "Get all your loved foods in one once place, you just place the orer we do the rest",
      backgroundColor: const Color(0xffFFF6E5),
    ),
    OnboardingModel(
      image: "assets/images/Rectangle 4177.png",
      title: "All your favorites",
      description:
      "Get all your loved foods in one once place, you just place the orer we do the rest",
      backgroundColor: const Color(0xffFFF6E5),
    ),
    OnboardingModel(
      image: "assets/images/Rectangle 4177.png",
      title: "Order from choosen chef",
      description:
      "Get all your loved foods in one once place, you just place the orer we do the rest",
      backgroundColor: const Color(0xffFFF6E5),
    ),
    OnboardingModel(
      image: "assets/images/Rectangle 4177.png",
      title: "Free delivery offers",
      description:
      "Get all your loved foods in one once place, you just place the orer we do the rest",
      backgroundColor: const Color(0xffFFF6E5),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller,
              itemCount: pages.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return OnboardingPage(model: pages[index]);
              },
            ),


            Positioned(
              bottom: 190,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  pages.length,
                      (index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4,vertical: 6),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: currentIndex == index
                          ? const Color(0xFFff7622)
                          : const Color(0xFFFFE1CE),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 24,
              right: 24,
              child: Column(
                children: [
                  if(currentIndex != pages.length-1)
                    SizedBox(
                      width: double.infinity,
                      height: 65,
                      child: ElevatedButton(

                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFE61B15),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          if (currentIndex < pages.length - 1) {
                            _controller.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                            );
                          }
                        },
                        child: const Text(
                          "Next",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  TextButton(
                    onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (c)=> Dlivery()));
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(fontSize: 16, color: Color(0xFF646982),fontWeight: FontWeight.w400,),
                    ),
                  ),

                ],
              ),
            ),

            if (currentIndex == pages.length - 1)
              Positioned(
                bottom: 40,
                left: 24,
                right: 24,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE61B15),
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (c)=> Dlivery()));
                  },
                  child: const Text(
                    "Get Started",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}