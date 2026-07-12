 import 'package:flutter/material.dart';


 class Startallscreens extends StatelessWidget {
   const Startallscreens({super.key});

   @override
   Widget build(BuildContext context) {
     return Column(
       children: [
         SizedBox(height: 8,),
         Row(mainAxisAlignment:MainAxisAlignment.start , children: [
           Text('Hay Halal,' , style: TextStyle(fontSize: 15),),
           Text(' Good Afternoon!' , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),),
         ],),
         SizedBox(height: 10,),
         /// Search
         SizedBox(
           height: 80,
           width: double.infinity,
           child: TextField(

             decoration: InputDecoration(
                 hintStyle: TextStyle(color: Colors.grey.shade500),
                 contentPadding: EdgeInsets.symmetric(vertical: 20),
                 fillColor: Color(0xffffF0F5FA) ,
                 filled: true,
                 prefixIcon: Icon(Icons.search , color: Colors.grey.shade500),
                 focusedBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.grey.shade300),
                     borderRadius: BorderRadius.circular(12)),
                 enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.grey.shade300),
                     borderRadius: BorderRadius.circular(12)),
                 hintText: 'Search dishes, restaurants'
             ),
           ),
         ),
         SizedBox(height: 10,),

         Row(mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Text('All Categories' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
             Spacer(),
             Text('See All' , style: TextStyle(fontWeight: FontWeight.normal , fontSize: 16),),
             SizedBox(width: 4,),
             Icon(Icons.arrow_forward_ios , size: 18, color: Colors.grey.shade400,)
           ],
         ),

       ],
     );
   }
 }
