 import 'package:flutter/material.dart';
import 'package:wasel/feature/auth/Widgets/coustem_auth_button.dart';

 class Verification extends StatelessWidget {
   const Verification({super.key});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
         backgroundColor: const Color(0xFF0E0E1C), // خلفية غامقة زي الصورة
         body: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             const SizedBox(height: 40),
             Center(
               child: const Text(
                 "Verification",
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 26,
                   fontWeight: FontWeight.bold,
                 ),
               ),
             ),
             const SizedBox(height: 8),

             // النص التوضيحي
             Center(
               child: const Text(
                 "We have sent a code to your email",
                 style: TextStyle(
                   color: Colors.white70,
                   fontSize: 14,
                 ),
               ),
             ),
             SizedBox(height: 10,),
             Center(
               child: const Text(
                 "example@gmail.com",
                 style: TextStyle(
                   color: Colors.white70,
                   fontSize: 14,
                   fontWeight: FontWeight.bold,
                 ),
               ),
             ),

             const SizedBox(height: 40),


                 Expanded(
                   child: Container(
                     padding: EdgeInsets.symmetric(horizontal: 16.0) ,
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(20),
                       ),
                       width: double.infinity,
                       child: Column(children: [
                         SizedBox(height: 20,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text('Code'),
                             Text('Resend in.50sec' , style: TextStyle(fontWeight: FontWeight.bold),)
                           ],
                         ),
                         SizedBox(height: 10,),
                         Row(mainAxisAlignment: MainAxisAlignment.spaceAround,spacing: 18,children: [
                           Container(
                             width: 62,
                             height: 50,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(12),
                                 color: Colors.grey.shade200
                             ),
                             child: TextField(
                               keyboardType: TextInputType.number,
                               maxLength: 1,
                               textAlign: TextAlign.center,
                               decoration: InputDecoration(
                                   counterText: "",
                                   border: OutlineInputBorder()
                               ),
                             ),
                           ),
                           Container(
                             width: 62,
                             height: 50,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(12),
                                 color: Colors.grey.shade200
                             ),
                             child: TextField(
                               keyboardType: TextInputType.number,
                               maxLength: 1,
                               textAlign: TextAlign.center,
                               decoration: InputDecoration(
                                   counterText: "",
                                   border: OutlineInputBorder()
                               ),
                             ),
                           ),
                           Container(
                             width: 62,
                             height: 50,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(12),
                                 color: Colors.grey.shade200
                             ),
                             child: TextField(
                               keyboardType: TextInputType.number,
                               maxLength: 1,
                               textAlign: TextAlign.center,
                               decoration: InputDecoration(
                                   counterText: "",
                                   border: OutlineInputBorder()
                               ),
                             ),
                           ),
                           Container(
                             width: 62,
                             height: 50,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(12),
                                 color: Colors.grey.shade200
                             ),
                             child: TextField(
                               keyboardType: TextInputType.number,
                               maxLength: 1,
                               textAlign: TextAlign.center,
                               decoration: InputDecoration(
                                   counterText: "",
                                   border: OutlineInputBorder()
                               ),
                             ),
                           ),
                         ],),
                         SizedBox(height: 40,),
                         CoustemAuthButton(child: Center(
                           child: Text(
                             "VERIFY",
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 16,
                               fontWeight: FontWeight.bold,
                               letterSpacing: 2,
                             ),
                           ),
                         ),),

                       ],)
                   ),
                 ),
               ],
         ),
     );
   }
 }