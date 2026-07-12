import 'package:flutter/material.dart';
import 'package:wasel/core/Models/burger_model.dart';
import 'package:wasel/feature/Home/Widgets/burger_widget.dart';
import 'package:wasel/feature/Home/Widgets/open_reustrent_widget.dart';

import '../../../core/Models/open_restunt.dart';
import '../../../core/Theme/app_color.dart';


 class Home4 extends StatefulWidget {
   const Home4({super.key});

   @override
   State<Home4> createState() => _Home4State();
 }

 class _Home4State extends State<Home4> {
   
   List<BurgerModel> burgers = [
     
     BurgerModel(name: 'Burger Bistro', desc: 'Rose garden', price: '40'),
     BurgerModel(name: 'Smokin\' Burger', desc: 'Cafenio Restaurant', price: '60'),
     BurgerModel(name: 'Buffalo Burgers', desc: 'Kaji Firm Kitchen', price: '75'),
     BurgerModel(name: 'Bullseye Burgers', desc: 'Bullseye Burgers', price: '94'),

   ];

   List <OpenRestunt> openResuterntDetils = [

     OpenRestunt(name: 'rose garden restaurant'.toUpperCase(), detilels: 'Burger - Chiken - Riche - Wings ', rate: '4.7', time: '20')

   ];
   
   @override
   Widget build(BuildContext context) {
     return Scaffold(

       appBar: AppBar(
         scrolledUnderElevation: 0.0,
         backgroundColor: Colors.white,
         title: Row(
           children: [
             Container(
               decoration: BoxDecoration(
                   color: Colors.grey.shade200,
                   shape: BoxShape.circle
               ),
               child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
             ),
             SizedBox(width: 20,),
             Text('Burger'),
             Icon(Icons.arrow_drop_down_outlined , color: AppColor.orange,),
             Spacer(),
             Container(
               width: 45,
               height:45,
               decoration: BoxDecoration(
                   color: Color(0xff121223),
                   shape: BoxShape.circle
               ),
               child: Icon(Icons.search, color: Colors.white,),
             ),
             IconButton(onPressed: (){}, icon: Icon(Icons.density_medium_rounded))
           ],
         ),
       ),

       body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20.0),
         child: SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [


               Text('Popular Burgers' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),


               Center(
                 child: Wrap(
                   direction: Axis.horizontal,
                   spacing: 40,
                   runSpacing: 20,
                   children: List.generate(burgers.length, (index){
                     return SizedBox(width: 160,child: Burgerwidget(item: burgers[index]));
                   })
                 ),
               ),
               Row(mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   SizedBox(width: 10,),
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
