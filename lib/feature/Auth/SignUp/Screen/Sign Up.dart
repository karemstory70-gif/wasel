 import 'package:flutter/material.dart';
import 'package:wasel/feature/Auth/Widgets/CoustemAuthbutton.dart';
import 'package:wasel/feature/Auth/Widgets/CoustemTextField.dart';


 class SignUp extends StatefulWidget {
   const SignUp({super.key});

   @override
   State<SignUp> createState() => _SignUpState();
 }

 class _SignUpState extends State<SignUp> {

   final TextEditingController emailcontroller = TextEditingController();
   final TextEditingController namecontroller = TextEditingController();
   final TextEditingController passwordcontroller = TextEditingController();
   final TextEditingController retypepasswordcontroller = TextEditingController();

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
                     Coustemtextfield(
                         controller: namecontroller,
                         hint: 'name',
                         isbassword: false
                     ),
                      SizedBox(height: 15),
                     Align(
                       alignment: Alignment.centerLeft,
                         child: Text('EMAIL')),
                     const SizedBox(height: 10),
                     Coustemtextfield(
                         controller: emailcontroller,
                         hint: 'email',
                         isbassword: false
                     ),
                     SizedBox(height: 15,),
                     Align(
                       alignment: Alignment.centerLeft,
                         child: Text('Passward')),
                     SizedBox(height: 10,),
                     Coustemtextfield(
                         controller: passwordcontroller,
                         hint: 'password',
                         isbassword: true
                     ),
                     SizedBox(height: 10,),
                     Align(
                       alignment: Alignment.centerLeft,
                         child: Text('Re-Type Password')),
                     SizedBox(height: 15,),
                     Coustemtextfield(
                         controller: retypepasswordcontroller,
                         hint: 'Re-Type Password',
                         isbassword: true
                     ),
                     SizedBox(height: 30,),
                    CoustemAuthbutton(child: Center(child: Text('Next' , style: TextStyle(color: Colors.white),),)),
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