import 'package:flutter/material.dart';
import 'package:wasel/feature/Home/Screens/Payment%20Method.dart';
import 'package:wasel/feature/Home/Screens/Tracking_Order.dart';
import '../../../core/Models/Models.dart';


class PaymentSuccessfull extends StatelessWidget {
   PaymentSuccessfull({super.key});



  @override

  final OnboardingModel model=
  OnboardingModel(
    image: "assets/images/Rectangle 4177.png",
    title: "Congratulations!",
    description:
    "You successfully maked a payment,enjoy our service!",
    backgroundColor: const Color(0xFFFFFFFF),
  );
  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(
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
        ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: SizedBox(

          width: double.infinity,
          height: 70,

          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFF7622),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=>TrackOrderScreen()));
            },
            child: Text("Track Order",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w700,

              ),
            ),
          ),
        ),
      ),
    );
  }
}
