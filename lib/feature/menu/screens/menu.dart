import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wasel/core/Models/menu_models.dart';
import 'package:wasel/feature/Menu/Screens/personal_info.dart';
import 'package:wasel/feature/Menu/Widgets/menu_widgets.dart';

 class Menu extends StatelessWidget {
   const Menu({super.key});

   @override
   Widget build(BuildContext context) {
     
     List<MenuModels> menus =[
       
       MenuModels(name: 'Personal Info', icon: Icons.person_2 , color: Color(0xffFB6F3D))
       
     ] ;
     
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
             Text('Profile' , style: TextStyle(fontSize: 18),),
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

       body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 15.0),
         child: SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child: Column(
             children: [

               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   CircleAvatar(backgroundColor: Color(0xffFFC6AE) ,radius: 50 ,),
                   SizedBox(width: 20,),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('Vishal Khadok' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16),),
                       SizedBox(height: 6,),
                       Text(' I love Fast Food'),
                     ],
                   ),
                 ],
               ),
               SizedBox(height: 20,),
               Container(
                 width: double.infinity,
                 padding: EdgeInsets.all(12),
                 decoration: BoxDecoration(
                   color: Color(0xffF6F8FA),
                   borderRadius: BorderRadius.circular(8)
                 ),
                 child: Column(
                   children: [

                     Menuwidgets(name: 'Personal Info', icon: Icons.perm_identity_sharp, color: Color(0xffFB6F3D),  ontap: (){

                       Navigator.push(context, MaterialPageRoute(builder: (c)=> Personalinfo()));

                     },),
                     Menuwidgets(name: 'Addresses', icon: Icons.map, color: Color(0xff413DFB))

                   ],
                 ),
               ),
               SizedBox(height: 20,),
               Container(
                 width: double.infinity,
                 padding: EdgeInsets.all(12),
                 decoration: BoxDecoration(
                     color: Color(0xffF6F8FA),
                     borderRadius: BorderRadius.circular(8)
                 ),
                 child: Column(
                   spacing: 10,
                   children: [

                     Menuwidgets(name: 'Cart', icon: CupertinoIcons.cart, color: Color(0xff369BFF)),
                     Menuwidgets(name: 'favorite', icon: Icons.favorite_border, color: Color(0xffB33DFB)),
                     Menuwidgets(name: 'Notifications', icon: Icons.notifications_none, color: Color(0xffFFAA2A)),
                     Menuwidgets(name: 'Payment Method', icon: Icons.credit_card, color: Color(0xff369BFF)),

                   ],
                 ),
               ),
               SizedBox(height: 20,),
               Container(
                 width: double.infinity,
                 padding: EdgeInsets.all(12),
                 decoration: BoxDecoration(
                     color: Color(0xffF6F8FA),
                     borderRadius: BorderRadius.circular(8)
                 ),
                 child: Column(
                   spacing: 10,
                   children: [

                     Menuwidgets(name: 'FAQs', icon: CupertinoIcons.question_circle, color: Color(0xffFB6D3A)),
                     Menuwidgets(name: 'User Reviews', icon: Icons.qr_code, color: Color(0xff2AE1E1)),
                     Menuwidgets(name: 'settings', icon: Icons.settings_outlined, color: Color(0xff413DFB)),
                   ],
                 ),
               ),
               SizedBox(height: 20,),
               Container(
                 width: double.infinity,
                 padding: EdgeInsets.all(12),
                 decoration: BoxDecoration(
                     color: Color(0xffF6F8FA),
                     borderRadius: BorderRadius.circular(8)
                 ),
                 child: Column(
                   spacing: 10,
                   children: [
                     
                     Menuwidgets(name: 'Log Out', icon: Icons.logout, color: Color(0xffFB4A59))
                     
                   ],
                 ),
               ),

             ],
           ),
         ),
       ),

     );
   }
 }
