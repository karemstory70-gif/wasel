import 'package:flutter/material.dart';
import 'package:wasel/feature/Auth/Login/Screen/Login.dart';
import 'package:wasel/feature/Auth/SignUp/Screen/Sign%20Up.dart';

class Dlivery extends StatefulWidget {
  const Dlivery({super.key});

  @override
  State<Dlivery> createState() => _DliveryState();
}

class _DliveryState extends State<Dlivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              SizedBox(height: 15,),
              Center(
                child: Image.asset('assets/images/delivery.png' , width: 250,height: 220,),
              ),
              SizedBox(height: 25,),
              Text('Fast and responsibily\ndelivery by our courir ' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 24),),
              SizedBox(height: 10,),
              Text('Get all your loved foods in one once place,\n   you just place the orer we do the rest'),
              SizedBox(height: 10,),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                    ),
                    width: 23,
                    height: 6,
                  ),
                  SizedBox(width: 4,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                    ),
                    width: 23,
                    height: 6,
                  ),
                  SizedBox(width: 4,),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xff12B76A)
                    ),
                    width: 23,
                    height: 6,
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(onPressed : (){

                   Navigator.push(context,  MaterialPageRoute(builder: (c)=> SignUp()));

                  } ,style: ElevatedButton.styleFrom(backgroundColor: Color(0xffE61B15) , shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
                    child: Text('Create an account' , style: TextStyle(color: Colors.white),),),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (c)=> LoginPage()));
                    },style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    child: Text('Login' , style: TextStyle(color: Colors.black , fontWeight: FontWeight.w600),),),
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        )
    );
  }
}