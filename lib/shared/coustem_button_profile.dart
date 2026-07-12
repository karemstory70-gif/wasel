import 'package:flutter/material.dart';

import '../core/Theme/app_color.dart';

class Coustembuttonprofile extends StatelessWidget {
  const Coustembuttonprofile({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      height: 60,

      decoration: BoxDecoration(
          color: AppColor.orange,
          borderRadius: BorderRadius.circular(8)
      ),
      child: Center(child: Text(name , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),)),
    );
  }
}
