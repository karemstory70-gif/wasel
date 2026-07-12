 import 'package:flutter/material.dart';
import 'package:wasel/feature/acsses.dart';
import 'package:wasel/feature/auth/Widgets/coustem_auth_button.dart';
import 'package:wasel/feature/auth/Widgets/coustem_text_field.dart';


 class SignUp extends StatefulWidget {
   const SignUp({super.key});

   @override
   State<SignUp> createState() => _SignUpState();
 }

 class _SignUpState extends State<SignUp> {

   final TextEditingController emailController = TextEditingController();
   final TextEditingController nameController = TextEditingController();
   final TextEditingController passwordController = TextEditingController();
   final TextEditingController retypePasswordController = TextEditingController();


   @override
   void dispose() {
     emailController.dispose();
     nameController.dispose();
     passwordController.dispose();
     retypePasswordController.dispose();
     super.dispose();
   }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(backgroundColor: const Color(0xff121223)),
       backgroundColor: const Color(0xff121223),
       body: SingleChildScrollView(
         scrollDirection: Axis.vertical,
         child: Column(
           children: [
             const SizedBox(height: 10),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: const [
                 Text(
                   'Sign Up',
                   style: TextStyle(
                     fontSize: 30,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                   ),
                 ),
               ],
             ),
             SizedBox(height: 10),
             Text(
               'Please sign up to get started',
               style: TextStyle(color: Colors.white),
             ),
             SizedBox(height: 25),
             Container(
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(16),
               ),
               width: double.infinity,
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 15.0 , vertical: 10),
                 child: Column(
                   children: [
                     const SizedBox(height: 10),
                     Align(
                       alignment: Alignment.centerLeft,
                         child: Text('Name')),
                     const SizedBox(height: 10),
                     CoustemTextField(
                         controller: nameController,
                         hint: 'name',
                         isBassword: false
                     ),
                      SizedBox(height: 15),
                     Align(
                       alignment: Alignment.centerLeft,
                         child: Text('EMAIL')),
                     const SizedBox(height: 10),
                     CoustemTextField(
                         controller: emailController,
                         hint: 'email',
                         isBassword: false
                     ),
                     SizedBox(height: 15,),
                     Align(
                       alignment: Alignment.centerLeft,
                         child: Text('Passward')),
                     SizedBox(height: 10,),
                     CoustemTextField(
                         controller: passwordController,
                         hint: 'password',
                         isBassword: true
                     ),
                     SizedBox(height: 10,),
                     Align(
                       alignment: Alignment.centerLeft,
                         child: Text('Re-Type Password')),
                     SizedBox(height: 15,),
                     CoustemTextField(
                         controller: retypePasswordController,
                         hint: 'Re-Type Password',
                         isBassword: true
                     ),
                     SizedBox(height: 30,),
                    CoustemAuthButton(
                       onPressed: (){

                         Navigator.push(context, MaterialPageRoute(builder: (c)=> Accss()));

                       },
                        child: Center(child: Text('Next' , style: TextStyle(color: Colors.white),),)),
                     SizedBox(height: 50,),
                   ],
                 ),
               ),
             ),
           ],
         ),
       ),
     );
   }
 }