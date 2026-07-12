import 'package:flutter/material.dart';
import 'package:wasel/feature/my_orders/widgets/coustem_order_widget.dart';

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
             CoustemOrderWidget(name: 'Pizza hut', price: '35.27', items: '03 items'),

             Text('Drinks'),
             SizedBox(height: 5,),
             Divider(
               height: 1,
               color: Colors.grey.shade100,
             ),
             SizedBox(height: 15,),
             CoustemOrderWidget(name: 'McDonald', price: '40.15', items: '02 items'),
             Text('Drinks'),
             SizedBox(height: 5,),
             Divider(
               height: 1,
               color: Colors.grey.shade100,
             ),
             SizedBox(height: 15,),
             CoustemOrderWidget(name: 'Pizza hut', price: '10.20', items: '01 items')

           ],

         ),
       ),




     );
   }
 }
