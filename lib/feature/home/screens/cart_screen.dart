import 'package:flutter/material.dart';
import 'package:wasel/feature/home/screens/payment_method.dart';


class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool isEdit=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121223),
      appBar: AppBar(
        backgroundColor: Color(0xFF121223),
          leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new,size: 26,color: Colors.white,)
          ),
        title: Text("Cart",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Colors.white),),
        centerTitle: false,
        actions: [
          TextButton(
              onPressed: (){
                setState(()=>
                  isEdit= !isEdit
                );
              },
              child:isEdit? Text("Done",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Color(0xFF059C6A)),):Text("EDIT items",style: TextStyle(color: Color(0xFFFF7622),fontWeight: FontWeight.w400,fontSize: 14),),
          ),
        ],
      ),
      body:SafeArea(
          child: Container(
            color: Color(0xFF121223),
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                        children: [

                          cartItem(isEdit),

                          SizedBox(height: 30),

                          cartItem(isEdit),

                        ],
                      ),
                    ),
                ],

        ),
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

              /// address
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Text("DELIVERY ADDRESS",
                    style: TextStyle(
                      color: Color(0xFFA0A5BA),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,

                    ),
                  ),
                  Text("EDIT",
                    style: TextStyle(
                      color: Color(0xFFFF7622),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,

                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Text("2118 Thornridge Cir.",
                      style: TextStyle(
                        color: Color(0xFF32343E),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,

                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),

              /// total
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
                  Row(
                    children: [
                      TextButton(
                        onPressed: (){},
                        child: Text("Breakdown",
                          style: TextStyle(
                            color: Color(0xFFFF7622),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,

                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),


                ],
              ),

              SizedBox(height: 30),

              /// button
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
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Paymentmethod()));
                  },
                  child: Text("PLACE ORDER",
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


Widget cartItem(bool isEdit) {
  return Row(
    children: [

      Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(25),
        ),
      ),

      SizedBox(width: 20),

      Expanded(
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pizza Calzone European",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,

                  ),
                ),
                isEdit
                    ? CircleAvatar(
                  backgroundColor: Colors.red,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.close,color: Colors.white,size: 20,),
                    )
                ) : SizedBox()
              ],
            ),



            SizedBox(height: 10),

            Text(
                "\$64",
              style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,

            ),
            ),

            SizedBox(height: 10),

            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [

                Text(
                    "14''",
                  style: TextStyle(
                    color: Colors.white30,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,

                  ),
                ),

                Row(
                  children: [

                    CircleAvatar(
                      child: IconButton(
                        onPressed: (){},
                          icon: Icon(Icons.remove),
                    ),
                    ),

                    SizedBox(width: 15),

                    Text("2"),

                    SizedBox(width: 15),

                    CircleAvatar(
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.add),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
