import 'package:flutter/material.dart';
import 'package:wasel/feature/auth/Verification/verification.dart';
import 'package:wasel/feature/auth/Widgets/coustem_auth_button.dart';
import 'package:wasel/feature/auth/Widgets/coustem_text_field.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool isHidden = true;

  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                 CoustemTextField(
                     controller: _controller,
                     hint: 'example@gmail.com',
                     isBassword: false
                 ),
                  const SizedBox(height: 25),
                  CoustemAuthButton(
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
