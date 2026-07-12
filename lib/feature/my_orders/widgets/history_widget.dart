import 'package:flutter/material.dart';

import '../../../Shared/coustem_cancle_bottun.dart';
import '../../../Shared/coustem_orange_bottun.dart';
import '../../../core/Theme/app_color.dart';


class HistoryWidget extends StatelessWidget {
  const HistoryWidget({super.key, required this.name, required this.price, required this.items, required this.history});
  final String history;
  final String name;
  final String price;
  final String items;


  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: AppColor.mainColor,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  width: 60,
                  height: 60,

                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(name , style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text('\$${price}' , style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(width: 10,),
                        Container(
                          height: 10,
                          width: 1,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 8,),
                        Text(history, style: TextStyle(color: Colors.grey,)),
                        SizedBox(width: 8,),
                        CircleAvatar(radius: 2,backgroundColor: Colors.grey,),
                        SizedBox(width: 10,),
                        Text(items, style: TextStyle(color: Colors.grey,)),
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                CoustemCancleBottun(name: 'Rate'),

                Coustemorangebottun(name: 'Re-Order'),



              ],
            )

          ],
        )
    );
  }
}
