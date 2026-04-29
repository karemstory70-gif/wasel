import 'package:flutter/material.dart';
import '../../../core/Models/Models.dart';

class OnboardingPage extends StatelessWidget {
  final OnboardingModel model;

  const OnboardingPage({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50, left: 30,right: 30),
      color: model.backgroundColor,
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(model.image, height: 240, fit: BoxFit.contain),
          const SizedBox(height: 40),
          Text(
            model.title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF32343E),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            model.description,
            style: const TextStyle(fontSize: 16, color: Color(0xFF646982)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}