 import 'package:flutter/material.dart';
import 'package:wasel/core/Models/open_restunt.dart';

import '../../../core/Theme/app_color.dart';

 class Openreustrentwidget extends StatelessWidget {
   final OpenRestunt item;
   const Openreustrentwidget({super.key, required this.item});

   @override
   Widget build(BuildContext context) {
     return Container(
       padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 10),
       width: double.infinity,
       // height: 225,
       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(30),
       ),
       child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
         Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(30),
             color: AppColor.mainColor,
           ),
           width: double.infinity,
           height: 214,
         ),
         SizedBox(height: 8,),
         Text(item.name , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
         SizedBox(height: 4,),
         Text(item.detilels),
         SizedBox(height: 10,),
         Row(mainAxisSize: MainAxisSize.min,children: [
           Icon(Icons.star_border_outlined, color: AppColor.orange, ),
           SizedBox(width: 4,),
           Text(item.rate , style: TextStyle(fontWeight: FontWeight.bold),),
           SizedBox(width: 12,),
           Icon(Icons.directions_car_filled ,color: AppColor.orange,),
           SizedBox(width: 4,),
           Text('Free'),
           SizedBox(width: 12,),
           Icon(Icons.access_time_outlined , color: AppColor.orange,),
           SizedBox(width: 4,),
           Text('${item.time}/min'),
         ],)
       ],),
     );
   }
 }
