import 'package:flutter/material.dart';

import '../core/Theme/app_color.dart';

class CoustemCancleBottun extends StatelessWidget {
  const CoustemCancleBottun({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 138,
      height: 38,

      decoration: BoxDecoration(
           color: Colors.white,
          border: Border.all(color: AppColor.orange , width: 1),
          borderRadius: BorderRadius.circular(8),

      ),
      child: Center(child: Text(name , style: TextStyle(color: AppColor.orange ),)),
    );
  }
}
