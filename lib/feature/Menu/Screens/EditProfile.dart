import 'package:flutter/material.dart';
import 'package:wasel/Shared/CoustemButtonProfile.dart';
import 'package:wasel/feature/Auth/Widgets/CoustemTextField.dart';

 class Editprofile extends StatelessWidget {
   const Editprofile({super.key});

   @override
   Widget build(BuildContext context) {
     final TextEditingController namecontroller = TextEditingController();
     final TextEditingController Emailcontroller = TextEditingController();
     final TextEditingController biocontroller = TextEditingController();
     final TextEditingController phonecontroller = TextEditingController();
     return Scaffold(

       appBar: AppBar(
         title: Row(
           children: [
             CircleAvatar(backgroundColor: Colors.grey.shade200,child: Icon(Icons.arrow_back) , radius: 20,),
             SizedBox(width: 6,),
             Text('Edit Profile'),
           ],
         ),
       ),

       body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 15.0),
         child: Column(
           children: [

             CircleAvatar(backgroundColor: Color(0xffFFC6AE) ,radius: 50 ,),

             Align(alignment: Alignment.centerLeft,child: Text('FULL NAME' , style: TextStyle(fontSize: 16 ),)),
             SizedBox(height: 10,),
             Coustemtextfield(
                 controller: namecontroller,
                 hint: 'Vishal Khadok',
                 isbassword: false
             ),
             SizedBox(height: 10,),
             Align(alignment: Alignment.centerLeft,child: Text('Email' , style: TextStyle(fontSize: 16 ),)),
             SizedBox(height: 10,),
             Coustemtextfield(
                 controller: Emailcontroller,
                 hint: 'hello@halallab.co',
                 isbassword: false
             ),
             SizedBox(height: 10,),
             Align(alignment: Alignment.centerLeft,child: Text('Phone number' , style: TextStyle(fontSize: 16 ),)),
             SizedBox(height: 10,),
             Coustemtextfield(
                 controller: phonecontroller,
                 hint: '408-841-0926',
                 isbassword: false
             ),
             SizedBox(height: 10,),
             Align(alignment: Alignment.centerLeft,child: Text('Bio' , style: TextStyle(fontSize: 16 ),)),
             SizedBox(height: 10,),
             Coustemtextfield(
                 controller: biocontroller,
                 hint: 'I love fast food',
                 isbassword: false
             ),

              SizedBox(height: 20),

              Coustembuttonprofile(name: 'Save')


           ],
         ),
       ),

     );
   }
 }
