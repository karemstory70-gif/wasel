import 'package:flutter/material.dart';

import '../../../core/Theme/app_color.dart';

 class CoustemcontinarCircle extends StatelessWidget {

    final double height;
    final double width;
    final Widget? child;


   const CoustemcontinarCircle({super.key, required this.height, required this.width,  this.child,});

   @override
   Widget build(BuildContext context) {
     return Container(
       width: width,
       height: height,
       decoration: BoxDecoration(
         shape: BoxShape.circle,
           color: AppColor.mainColor
       ),
     );

   }
 }
 class Coustemcontinar extends StatelessWidget {

   final double height;
   final double width;
   final Widget ? child;

   const Coustemcontinar({super.key, required this.height, required this.width, this.child});

   @override
   Widget build(BuildContext context) {
     return Container(
       child: child ,
       width: width,
       height: height,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(16),
           color: AppColor.mainColor
       ),
     );
   }
 }
