import 'package:flutter/material.dart';
import 'package:wasel/Shared/CoustemCancleBottun.dart';
import 'package:wasel/Shared/CoustemOrangeBottun.dart';
import 'package:wasel/core/Theme/AppColor.dart';
import 'package:wasel/feature/My%20orders/Widgets/CoustemOrderWidget.dart';

 class Ongoing extends StatefulWidget {
   const Ongoing({super.key});

   @override
   State<Ongoing> createState() => _OngoingState();
 }

 class _OngoingState extends State<Ongoing> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 15.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [

             Text('food'),
             SizedBox(height: 5,),
             Divider(
               height: 1,
               color: Colors.grey.shade100,
             ),
             SizedBox(height: 15,),
             Coustemorderwidget(name: 'Pizza hut', price: '35.27', Items: '03 Items'),

             Text('Drinks'),
             SizedBox(height: 5,),
             Divider(
               height: 1,
               color: Colors.grey.shade100,
             ),
             SizedBox(height: 15,),
             Coustemorderwidget(name: 'McDonald', price: '40.15', Items: '02 Items'),
             Text('Drinks'),
             SizedBox(height: 5,),
             Divider(
               height: 1,
               color: Colors.grey.shade100,
             ),
             SizedBox(height: 15,),
             Coustemorderwidget(name: 'Pizza hut', price: '10.20', Items: '01 Items')

           ],

         ),
       ),




     );
   }
 }
