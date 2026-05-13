 import 'package:flutter/material.dart';

import '../../../Shared/CoustemCancleBottun.dart';
import '../../../Shared/CoustemOrangeBottun.dart';
import '../../../core/Theme/AppColor.dart';


 class Coustemorderwidget extends StatelessWidget {
   const Coustemorderwidget({super.key, required this.name, required this.price, required this.Items});

   final String name;
   final String price;
   final String Items;


   @override
   Widget build(BuildContext context) {
     return Container(
       child: Column(
         children: [

           Row(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                 decoration: BoxDecoration(
                     color: AppColor.Main,
                     borderRadius: BorderRadius.circular(12)
                 ),
                 width: 60,
                 height: 60,

               ),
               SizedBox(width: 10,),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Text(name , style: TextStyle(fontWeight: FontWeight.bold),),
                   SizedBox(height: 10,),
                   Row(
                     children: [
                       Text('\$${price}' , style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(width: 10,),
                       Container(
                         height: 10,
                         width: 1,
                         color: Colors.grey,
                       ),
                       SizedBox(width: 10,),
                       Text(Items, style: TextStyle(color: Colors.grey,)),
                     ],
                   ),
                 ],
               )
             ],
           ),
           SizedBox(height: 15,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [

               Coustemorangebottun(name: 'Track Order'),

               CoustemCancleBottun(name: 'Cancel')

             ],
           )

         ],
       )
     );
   }
 }
