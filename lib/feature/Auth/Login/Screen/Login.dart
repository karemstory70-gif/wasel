import 'package:flutter/material.dart';
import 'package:wasel/feature/Auth/SignUp/Screen/Sign%20Up.dart';
import 'package:wasel/feature/Auth/Verification/ForgetPassword.dart';
import 'package:wasel/feature/Auth/Widgets/CoustemAuthbutton.dart';
import 'package:wasel/feature/Auth/Widgets/CoustemTextField.dart';
import 'package:wasel/feature/Home/Screens/Home1.dart';

import '../../../../core/Theme/AppColor.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(scrolledUnderElevation: 0, backgroundColor: AppColor.Auth),
      backgroundColor: AppColor.Auth,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Please sign in to your existing account',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18.0,
                  vertical: 6,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Align(
                      child: Text('Email'),
                      alignment: Alignment.centerLeft,
                    ),
                    SizedBox(height: 10),
                    Coustemtextfield(
                      controller: emailcontroller,
                      hint: 'Email',
                      isbassword: false,
                    ),
                    SizedBox(height: 15),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Password'),
                    ),
                    SizedBox(height: 10),
                    Coustemtextfield(
                      controller: passwordcontroller,
                      hint: 'password',
                      isbassword: true,
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                            ),
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(width: 4),
                          Text('Remember me'),
                          Spacer(),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (c) => Forgotpassword(),
                                ),
                              );
                            },

                            child: Text(
                              'Forgot Password',
                              style: TextStyle(color: AppColor.orange),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    CoustemAuthbutton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> Home1()));
                      },
                      child: Center(
                        child: Text(
                          'Next',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don’t have an account?'),
                        SizedBox(width: 4),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (c) => SignUp()),
                            );
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(color: AppColor.orange),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Center(child: Text('Or')),
                    SizedBox(height: 10),

                    Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 20,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xff395998),
                          radius: 30,
                          child: Icon(Icons.facebook, color: Colors.white),
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0xff169CE8),
                          radius: 30,
                          child: Image.asset('assets/LoginLogo/Vector (1).png'),
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0xff121223),
                          radius: 30,
                          child: Icon(Icons.apple, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
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
