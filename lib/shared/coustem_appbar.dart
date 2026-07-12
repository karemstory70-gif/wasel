 import 'package:flutter/material.dart';
import 'package:wasel/feature/Menu/Screens/personal_info.dart';
import 'package:wasel/feature/my_orders/Screens/my_orders.dart';

import '../core/Theme/app_color.dart';

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
               shape: BoxShape.circle,
             ),

             child: IconButton(

               icon: Icon(Icons.menu),

               onPressed: () {

                 showModalBottomSheet(

                   context: context,

                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.vertical(
                       top: Radius.circular(25),
                     ),
                   ),

                   builder: (context){

                     return Padding(

                       padding: const EdgeInsets.all(20),

                       child: Column(

                         mainAxisSize: MainAxisSize.min,

                         children: [

                           Container(
                             width: 50,
                             height: 5,
                             decoration: BoxDecoration(
                               color: Colors.grey.shade300,
                               borderRadius: BorderRadius.circular(20),
                             ),
                           ),

                           SizedBox(height: 25),

                           ListTile(

                             leading: CircleAvatar(
                               backgroundColor: Color(0xffFB6F3D),
                               child: Icon(Icons.person,color: Colors.white),
                             ),

                             title: Text(
                               'Myorders',
                               style: TextStyle(fontWeight: FontWeight.w600),
                             ),

                             trailing: Icon(Icons.arrow_forward_ios,size: 16),

                             onTap: (){

                               Navigator.pop(context);

                               Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                   builder: (context)=> Myorders(),
                                 ),
                               );

                             },

                           ),

                           SizedBox(height: 10),

                           ListTile(

                             leading: CircleAvatar(
                               backgroundColor: Color(0xff413DFB),
                               child: Icon(Icons.badge,color: Colors.white),
                             ),

                             title: Text(
                               'Personal Info',
                               style: TextStyle(fontWeight: FontWeight.w600),
                             ),

                             trailing: Icon(Icons.arrow_forward_ios,size: 16),

                             onTap: (){

                               Navigator.pop(context);

                               Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                   builder: (context)=> Personalinfo(),
                                 ),
                               );

                             },

                           ),

                           SizedBox(height: 20),

                         ],
                       ),
                     );
                   },
                 );
               },
             ),
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
