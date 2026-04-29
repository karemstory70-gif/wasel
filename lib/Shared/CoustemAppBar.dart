 import 'package:flutter/material.dart';

import '../core/Theme/AppColor.dart';

 class Coustemappbar extends StatelessWidget implements PreferredSizeWidget {
   const Coustemappbar({super.key});

   @override
   // TODO: implement preferredSize
   Size get preferredSize =>const Size.fromHeight(70);

   @override
   Widget build(BuildContext context) {
     return AppBar(
       backgroundColor: Colors.white,
       scrolledUnderElevation: 0.0,
       toolbarHeight: preferredSize.height,
       title: Row(
         children: [
           Container(
             decoration: BoxDecoration(
                 color: Colors.grey.shade200,
                 shape: BoxShape.circle
             ),
             child: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
           ),
           SizedBox(width: 10,),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
             Text("Deliver to",  style: TextStyle(color: AppColor.orange,fontSize: 14),),
             SizedBox(height: 4,),
             Row(
               children: [
                 Text("Halal Lab office" , style: TextStyle(fontSize: 14),),
                 Icon(Icons.arrow_drop_down_outlined),
               ],
             ),
           ],),
           Spacer(),
               Container(
                 width: 45,
                 height:45,
                 decoration: BoxDecoration(
                     color: Color(0xff121223),
                     shape: BoxShape.circle
                 ),
                 child: Icon(Icons.shopping_bag_outlined, color: Colors.white,),
               ),

         ],
       ),
     );
   }
 }
