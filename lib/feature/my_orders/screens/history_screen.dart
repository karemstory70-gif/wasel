import 'package:flutter/material.dart';
import 'package:wasel/feature/my_orders/widgets/history_widget.dart';

class Histoty extends StatefulWidget {
  const Histoty({super.key});

  @override
  State<Histoty> createState() => _HistotyState();
}

class _HistotyState extends State<Histoty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              children: [
                Text('food'),
                SizedBox(width: 20,),
                Text('Completed'  , style: TextStyle(color: Color(0xff059C6A)),),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              height: 1,
              color: Colors.grey.shade100,
            ),
            SizedBox(height: 15,),
            HistoryWidget(name: 'Pizza hut', price: '35.27', items: '03 items', history: '29 Jan, 12:30' , ),
            SizedBox(height: 10,),

            Row(
              children: [
                Text('Drinks'),
                SizedBox(width: 20,),
                Text('Completed'  , style: TextStyle(color: Color(0xff059C6A)),),
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              height: 1,
              color: Colors.grey.shade100,
            ),
            SizedBox(height: 15,),
            HistoryWidget(name: 'McDonald', price: '40.15', items: '02 items', history: '30 Jan, 12:30' , ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text('Drinks'),
                SizedBox(width: 20,),
                Text('Canceled' , style: TextStyle(color: Color(0xffFF0000),))
              ],
            ),
            SizedBox(height: 5,),
            Divider(
              height: 1,
              color: Colors.grey.shade100,
            ),
            SizedBox(height: 15,),
            HistoryWidget(name: 'Starbucks', price: '10.20', items: '01 items', history: '30 Jan, 12:30' , ),

          ],

        ),
      ),




    );
  }
}
