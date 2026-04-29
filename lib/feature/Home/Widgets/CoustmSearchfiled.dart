 import 'package:flutter/material.dart';


 class Coustmsearchfiled extends StatelessWidget {
   const Coustmsearchfiled({super.key});

   @override
   Widget build(BuildContext context) {
     return SizedBox(
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
     );
   }
 }
