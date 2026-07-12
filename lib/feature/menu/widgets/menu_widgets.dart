import 'package:flutter/material.dart';

 class Menuwidgets extends StatelessWidget {
   const Menuwidgets({super.key, required this.name, required this.icon, this.ontap, required this.color});

   final String name;
   final IconData icon;
   final Color color;
   final Function()? ontap;

   @override
   Widget build(BuildContext context) {
     return ListTile(
       leading: Container(
         padding: EdgeInsets.all(6),
         decoration:BoxDecoration(
         color: Colors.white,
         shape: BoxShape.circle,
       ),child: Icon(icon , color: color ,)),
       title: Text(name),
       trailing: Icon(Icons.arrow_forward_ios , size: 12,),
       onTap: ontap,
     );
   }
 }

