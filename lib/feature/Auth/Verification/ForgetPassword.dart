import 'package:flutter/material.dart';
import 'package:wasel/feature/Auth/Verification/verification.dart';
import 'package:wasel/feature/Auth/Widgets/CoustemAuthbutton.dart';
import 'package:wasel/feature/Auth/Widgets/CoustemTextField.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  bool isHidden = true;

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 25, 44),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 100),
            alignment: Alignment.topCenter,
            child: Column(
              children: const [
                Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Please sign in to your existing account",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(172, 255, 255, 255),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 40),

          // ⚪ الجزء الأبيض (ياخد باقي الشاشة)
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "EMAIL",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(188, 0, 0, 0),
                    ),
                  ),
                  const SizedBox(height: 10),
                 Coustemtextfield(
                     controller: _controller,
                     hint: 'example@gmail.com',
                     isbassword: false
                 ),
                  const SizedBox(height: 25),
                  CoustemAuthbutton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (c)=> Verification()));
                    },
                      child: Center(child: Text('send code' , style: TextStyle(color: Colors.white , fontSize: 18),),)
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
