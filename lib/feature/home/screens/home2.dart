 import 'package:flutter/material.dart';
import 'package:wasel/Shared/coustem_appbar.dart';
import 'package:wasel/core/Models/product_model.dart';
import 'package:wasel/core/Models/open_restunt.dart';
import 'package:wasel/feature/Home/Widgets/coustem_continar.dart';
import 'package:wasel/feature/Home/Widgets/open_reustrent_widget.dart';
import 'package:wasel/feature/Home/Widgets/start_all_screens.dart';

 class Home2 extends StatefulWidget {
   const Home2({super.key});

   @override
   State<Home2> createState() => _Home2State();
 }

 class _Home2State extends State<Home2> {

   @override
   void initState() {
     super.initState();
     WidgetsBinding.instance.addPostFrameCallback((_) {
       Future.delayed(Duration(seconds: 15), () {
         offer();
       });
     });
   }
   void offer() {
     showDialog(
       context: context,
       builder: (context) {
         return Dialog(
           child: Container(
             padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 20),

             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(25),
               gradient: LinearGradient(
                 end: Alignment.topLeft,
                 begin: Alignment.bottomRight,
                 colors: [
                   Color(0xffE76F00),
                   Color(0xffFFEB34),
                 ],
               ),
             ),
             child: Column(
               mainAxisSize: MainAxisSize.min,
               children: [
                 Stack(
                   children: [
                     Image.asset('assets/images/Elements (1).png'),
                     Positioned(
                       top: 80,
                         left: 30,
                         right: 0,
                         child: Text('Hurry Offers!' , style: TextStyle(fontSize: 30  ,letterSpacing: 3 ,fontWeight: FontWeight.w900 , color: Colors.white),))
                   ],
                 ),
                 Column(
                   children: [
                     Text('#1243CD2' , style: TextStyle(fontSize: 25 , color: Colors.white),),
                     SizedBox(height: 10,),
                     Text('Use the cupon get 25% discount' , style: TextStyle(color: Colors.white),),
                     SizedBox(height: 10,),
                     GestureDetector(
                       onTap: (){
                         Navigator.pop(context);
                       },
                       child: Container(
                         width: 200,
                         height: 60,
                         decoration: BoxDecoration(
                           color: Color(0xffE76F00),
                           borderRadius: BorderRadius.circular(12),
                           border: Border.all(color: Colors.white , width: 2)
                         ),
                         child: Center(
                           child:Text('Got it' , style: TextStyle(color: Colors.white ),),
                         ),
                       ),
                     )
                   ],
                 )
               ],
             ),
           ),
         );
       },
     );
   }

   List <ProductModel> products = [

     ProductModel(name: 'Pizza', price: '70'),
     ProductModel(name: 'Burger', price: '50'),
     ProductModel(name: 'PizzaSpicy', price: '90'),

   ];
   List <OpenRestunt> openResuterntDetils = [

     OpenRestunt(name: 'rose garden restaurant'.toUpperCase(), detilels: 'Burger - Chiken - Riche - Wings ', rate: '4.7', time: '20')

   ];

   @override
   Widget build(BuildContext context) {
     return Scaffold(

       appBar: Coustemappbar(),

       body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 12.0),
         child: SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child: Column(
             children: [
               Startallscreens(),

               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Row(
                   children: List.generate(products.length, (index){

                     final item = products[index];

                     return Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 15.0),
                       child: Container(
                         padding: EdgeInsets.symmetric(vertical: 3 ,horizontal: 10),
                         decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(12)
                         ),

                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Coustemcontinar(
                                 height: 104,
                                 width: 122
                             ),
                             SizedBox(height: 5,),

                             Text(item.name, style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                             Row(
                               mainAxisSize: MainAxisSize.min,
                               children: [
                                 Text('Starting'),
                                 SizedBox(width: 40,),
                                 Text('\$${item.price}')
                               ],
                             ),

                             SizedBox(height: 10,)

                           ],
                         ),
                       ),
                     );
                   })
                 ),
               ),
               SizedBox(height: 10,),
               Row(mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Text('Open Restaurants' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
                   Spacer(),
                   Text('See All' , style: TextStyle(fontWeight: FontWeight.normal , fontSize: 16),),
                   SizedBox(width: 4,),
                   Icon(Icons.arrow_forward_ios , size: 18, color: Colors.grey.shade400,)
                 ],
               ),

            Column(
              children: List.generate(openResuterntDetils.length, (index){
                return Openreustrentwidget(item: openResuterntDetils[index]);
              })
            )


             ],
           ),
         ),
       ),

     );
   }
 }
