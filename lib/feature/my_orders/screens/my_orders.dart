import 'package:flutter/material.dart';
import 'package:wasel/core/Theme/app_color.dart';
import 'package:wasel/feature/my_orders/Screens/history_screen.dart';
import 'package:wasel/feature/my_orders/Screens/ongoing_screen.dart';

 class Myorders extends StatefulWidget {
   const Myorders({super.key});

   @override
   State<Myorders> createState() => _MyordersState();
 }

 class _MyordersState extends State<Myorders> {

   int selectedindex = 0;

   @override
   Widget build(BuildContext context) {
     return Scaffold(

       appBar: AppBar(
         leadingWidth: 0,
         leading: SizedBox.shrink(),

         title: Row(

           children: [
             Container(
               padding: EdgeInsets.all(8),
               decoration: BoxDecoration(
                   color:Colors.grey.shade300,
                   shape: BoxShape.circle
               ),

               child: Icon(Icons.arrow_back_ios_new  , size: 16,),

             ),
             SizedBox(width: 15,),
             Text('My Orders' , style: TextStyle(fontSize: 18),),
             Spacer(),
             Container(
               padding: EdgeInsets.all(8),
               decoration: BoxDecoration(
                   color:Colors.grey.shade300,
                   shape: BoxShape.circle
               ),

               child: Icon(Icons.more_horiz_outlined  ,size: 16),

             ),

           ],

         ),




       ),

       body: Column(
         children: [

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Column(
                 children: [
                   Text('Ongoing' , style: TextStyle(fontWeight: FontWeight.w700 , color: selectedindex == 0? AppColor.orange : Colors.grey ),),
                   
                   SizedBox(height: 10,),
                   
                   CurrentPage(active: selectedindex==0),
                 ],
               ),
               Column(
                 children: [
                   Text('History' , style: TextStyle(fontWeight: FontWeight.w700 , color: selectedindex == 1? AppColor.orange : Colors.grey),),
                   SizedBox(height: 10,),
                   
                   CurrentPage(active: selectedindex==1),
                 ],
               ),
             ],
           ),


           SizedBox(height: 10,),

           Expanded(
             child: PageView(

               onPageChanged: (v){

                 setState(() {

                   selectedindex = v;

                 });

               },

               children: [



                 Ongoing(),
                 Histoty()

               ],
             ),
           ),
         ],
       ),

     );
   }
 }
 class CurrentPage extends StatelessWidget {
   const CurrentPage({super.key, required this.active});
   final bool active;

   @override
   Widget build(BuildContext context) {
     return  AnimatedContainer(
       duration: Duration(milliseconds: 400),
       curve: Curves.fastOutSlowIn,
       height: 1,
       width: 150,
       color: active ? AppColor.orange : Colors.white,
     );
   }
 }


