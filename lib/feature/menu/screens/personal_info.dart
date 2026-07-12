import 'package:flutter/material.dart';
import 'package:wasel/feature/Home/Screens/home1.dart';
import 'package:wasel/feature/Menu/Screens/edit_profile.dart';

import '../../../core/Theme/app_color.dart';


class Personalinfo extends StatelessWidget {
  const Personalinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(backgroundColor: Colors.grey.shade200,child: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>Home1()));}, icon: Icon(Icons.arrow_back)) , radius: 20,),
            SizedBox(width: 6,),
            Text('Personal Info'),
            Spacer(),
            TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (c)=> Editprofile()));}, child: Text('Edit' , style: TextStyle(color: AppColor.orange),))
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [


            Center(
              child: Row(
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
            ),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Color(0xffF6F8FA),
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Column(
                children: [

                  _Profile(name: 'Full Name', icon: Icons.perm_identity_sharp, subtitle: 'Vishal Khadok' , color: Color(0xffFB6F3D)),
                  _Profile(name: 'Email', icon: Icons.email_outlined, color: Color(0xff413DFB) ,subtitle: 'hello@halallab.co'),
                  _Profile(name: 'Phone Number', icon: Icons.phone, color: Color(0xff369BFF) ,subtitle: '408-841-0926')

                ],
              ),
            )

          ],
        ),
      ),

    );
  }
}
 Widget _Profile({required String name , required String subtitle , required icon , required color}){
  return ListTile(
    title: Text(name),
    subtitle: Text(subtitle),
    leading: Icon(icon , color: color,),
    onTap: (){},
  );
}