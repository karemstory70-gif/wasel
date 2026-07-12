import 'package:flutter/material.dart';
import 'package:wasel/Shared/coustem_button_profile.dart';
import 'package:wasel/feature/auth/Widgets/coustem_text_field.dart';

 class Editprofile extends StatelessWidget {
   const Editprofile({super.key});

   @override
   Widget build(BuildContext context) {
     final TextEditingController nameController = TextEditingController();
     final TextEditingController emailController = TextEditingController();
     final TextEditingController bioController = TextEditingController();
     final TextEditingController phoneController = TextEditingController();
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
             CoustemTextField(
                 controller: nameController,
                 hint: 'Vishal Khadok',
                 isBassword: false
             ),
             SizedBox(height: 10,),
             Align(alignment: Alignment.centerLeft,child: Text('Email' , style: TextStyle(fontSize: 16 ),)),
             SizedBox(height: 10,),
             CoustemTextField(
                 controller: emailController,
                 hint: 'hello@halallab.co',
                 isBassword: false
             ),
             SizedBox(height: 10,),
             Align(alignment: Alignment.centerLeft,child: Text('Phone number' , style: TextStyle(fontSize: 16 ),)),
             SizedBox(height: 10,),
             CoustemTextField(
                 controller: phoneController,
                 hint: '408-841-0926',
                 isBassword: false
             ),
             SizedBox(height: 10,),
             Align(alignment: Alignment.centerLeft,child: Text('Bio' , style: TextStyle(fontSize: 16 ),)),
             SizedBox(height: 10,),
             CoustemTextField(
                 controller: bioController,
                 hint: 'I love fast food',
                 isBassword: false
             ),

              SizedBox(height: 20),

              Coustembuttonprofile(name: 'Save')


           ],
         ),
       ),

     );
   }
 }
