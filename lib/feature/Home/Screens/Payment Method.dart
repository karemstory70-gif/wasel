import 'package:flutter/material.dart';
import 'package:wasel/Shared/Cousem2AppBar.dart';
import 'package:wasel/feature/Home/Screens/Add_Card.dart';
import 'package:wasel/feature/Home/Screens/Payment_Successfull.dart';


class Paymentmethod extends StatefulWidget {
  const Paymentmethod({super.key});

  @override
  State<Paymentmethod> createState() => _PaymentmethodState();
}

class _PaymentmethodState extends State<Paymentmethod> {
  List<Map<String, dynamic>> tags = [
    {"name": "Cash"},
    {"name": "Visa"},
    {"name": "Mastercard"},
    {"name": "PayPal"},
  ];
  List<Map<String, dynamic>> images = [
    {"image": "assets/payment/Cash.png"},
    {"image": "assets/payment/Group.png"},
    {"image": "assets/payment/Group 2361.png"},
    {"image": "assets/payment/paypal-icon 1.png"},
  ];
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Coustem2Appbar(Title: "Payment"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 30,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(tags.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Column(
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [

                                Container(
                                  margin: const EdgeInsets.only(right: 20),
                                  width: 85,
                                  height: 75,

                                  decoration: BoxDecoration(
                                    color: const Color(0xFFEDEDED),

                                    borderRadius: BorderRadius.circular(10),

                                    border: Border.all(
                                      color: selectedIndex == index
                                          ? const Color(0xFFF58D1D)
                                          : Colors.transparent,
                                      width: 3,
                                    ),
                                  ),

                                  child: Center(
                                    child: Image.asset(
                                      images[index]["image"],
                                    ),
                                  ),
                                ),

                                if (selectedIndex == index)
                                  Positioned(
                                    top: -8,
                                    right: 25,

                                    child: Container(
                                      width: 24,
                                      height: 24,

                                      decoration: BoxDecoration(
                                        color: Color(0xFFF58D1D),
                                        shape: BoxShape.circle,
                                      ),

                                      child: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),

                          SizedBox(height: 8),
                          Center(
                            child: Text(
                              tags[index]["name"],
                              style: const TextStyle(
                                color: Color(0xFF181C2E),
                              ),
                            ),
                          ),

                        ],
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 25,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                height: 210,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFF7F8F9),
                ),
                child: Column(
                  children: [
                    Image.asset("assets/payment/Clipped.png"),
                    SizedBox(height: 10,),
                    Text("No master card added",style: TextStyle(color: Color(0xFF32343E),fontSize: 16,fontWeight: FontWeight.w700,),),
                    SizedBox(height: 10,),
                    Text("You can add a mastercard and save it for later",style: TextStyle(color: Color(0xC32D2D2D),fontSize: 15,fontWeight: FontWeight.w400,),),

                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF0F5FA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>AddCard(),));
                  },
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add,color: Color(0xFFFF7622),),
                        SizedBox(width: 10,),
                        Text(
                          "Add New",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFF7622),
                          ),
                        ),
                      ],
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(35),
          ),
        ),

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("TOTAL: ",
                      style: TextStyle(
                        color: Color(0xFFA0A5BA),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 12,),
                    Text("\$96",
                      style: TextStyle(
                        color: Color(0xFF181C2E),
                        fontSize: 30,
                        fontWeight: FontWeight.w400,

                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF7622),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>PaymentSuccessfull()));
                },
                child: Text("Pay & Confirm",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,

                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
