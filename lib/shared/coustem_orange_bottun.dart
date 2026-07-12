import 'package:flutter/material.dart';

import '../core/Theme/app_color.dart';

 class Coustemorangebottun extends StatelessWidget {
   const Coustemorangebottun({super.key, required this.name});

   final String name;

   @override
   Widget build(BuildContext context) {
     return Container(

       width: 138,
       height: 38,

       decoration: BoxDecoration(
           color: AppColor.orange,
           borderRadius: BorderRadius.circular(8)
       ),
       child: Center(child: Text(name , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),)),
     );
   }
 }
