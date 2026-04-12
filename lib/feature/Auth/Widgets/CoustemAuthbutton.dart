import 'package:flutter/material.dart';
import 'package:wasel/core/Theme/AppColor.dart';

 class CoustemAuthbutton extends StatelessWidget {
   final Function()? onPressed;
   final Widget child;
   const CoustemAuthbutton({super.key, this.onPressed, required this.child});

   @override
   Widget build(BuildContext context) {
     return InkWell(
       onTap : onPressed,
       child: Container(
         decoration: BoxDecoration(
           color: AppColor.red,
           borderRadius: BorderRadius.circular(10),
         ),
         width: double.infinity,
         height: 55,
         child: child
       ),
     );
   }
 }

