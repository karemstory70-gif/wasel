import 'package:flutter/material.dart';
import 'package:wasel/feature/auth/Widgets/coustem_auth_button.dart';

class Accss extends StatefulWidget {
  const Accss({super.key});

  @override
  State<Accss> createState() => _Accss();
}

class _Accss extends State<Accss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 15),
            Center(
              child: Container(
                width: 240,
                height: 292,
                decoration: BoxDecoration(
                  color: Color(0xff98A8B8),
                  borderRadius: BorderRadius.circular(80),
                ),
              ),
            ),
            SizedBox(height: 50),
                  CoustemAuthButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 15,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "ACCESS LOCATION",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      Icon(Icons.location_on_outlined, color: Colors.white),
                    ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'DFOOD WILL ACCESS YOUR LOCATION \n       ONLY WHILE USING THE APP',
            ),
          ],
        ),
      ),
    );
  }
}
