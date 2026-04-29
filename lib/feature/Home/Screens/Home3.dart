import 'package:flutter/material.dart';
import 'package:wasel/core/Models/RestaurantsModel.dart';
import 'package:wasel/core/Theme/AppColor.dart';
import 'package:wasel/feature/Home/Widgets/CoustmSearchfiled.dart';

 class Home3 extends StatefulWidget {
   const Home3({super.key});

   @override
   State<Home3> createState() => _Home3State();
 }

 class _Home3State extends State<Home3> {
   
   List <RestaurantsModel> rest = [
     
     RestaurantsModel(name: 'Pansi Restaurant', rate: '4.7'),
     RestaurantsModel(name: 'American Spicy Burger Shop', rate: '4.3'),
     RestaurantsModel(name: 'Cafenio Coffee Club', rate: '4')

   ];

   List<String> Categories = [
     'Burger',
     'Sandwich',
     'Pizza'
   ];

   int? selctedindex;

   @override
   Widget build(BuildContext context) {
     return Scaffold(

       appBar: AppBar(
         scrolledUnderElevation: 0.0,
         backgroundColor: Colors.white,
         toolbarHeight: 80,
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
             Text('Search' ,style: TextStyle(fontSize: 18),),
             Spacer(),
             Container(
               width: 45,
               height:45,
               decoration: BoxDecoration(
                   color: Color(0xff121223),
                   shape: BoxShape.circle
               ),
               child: Icon(Icons.shopping_bag_outlined, color: Colors.white,),
             )
           ],
         ),
       ),

       body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 12.0),
         child: SingleChildScrollView(

           scrollDirection: Axis.vertical,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [

               Coustmsearchfiled(),

               Text('Recent Keywords' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                 SizedBox(height: 10,),
               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,spacing: 18,
                   children: List.generate(Categories.length, (index){
                     return GestureDetector(
                       onTap: (){
                         setState(() {
                           selctedindex = index;
                         });
                       },
                       child: Container(
                           decoration: BoxDecoration(
                             color: selctedindex ==index ? AppColor.orange : Colors.grey.shade300,
                             borderRadius: BorderRadius.circular(20),
                           ),
                           padding: EdgeInsets.all(16),
                           child: Text(Categories[index])
                       ),
                     );
                   })
                 ),
               ),

               SizedBox(height: 10,),

               Text('Suggested Restaurants' , style:TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
               SizedBox(height: 10,),

               Column(
                 children: List.generate(rest.length, (index){
                   final item = rest[index];
                   return Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10.0 , vertical: 10),
                     child: Container(
                       decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
                       child: Row(
                         children: [
                           Container(width: 61,height: 58,decoration: BoxDecoration(color: AppColor.Main , borderRadius: BorderRadius.circular(12)),),
                           SizedBox(width: 8,),
                           Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                             Text(item.name),
                             Row(children: [
                               Icon(Icons.star_border_outlined , color: AppColor.orange,),
                               SizedBox(width: 6,),
                               Text(item.rate)
                             ],)
                           ],))
                         ],
                       ),
                     ),
                   );
                 })
               ),

               SizedBox(height: 20,),
               Text("Popular Fast food" , style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.bold),),

               Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                 Container(
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(12),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                       Container(width: 122,height: 84,decoration: BoxDecoration(color: AppColor.Main , borderRadius: BorderRadius.circular(12)),),
                       SizedBox(height: 4,),
                       Text('european Pizza' , style: TextStyle(fontWeight: FontWeight.w600),),
                       SizedBox(height: 4,),
                       Text('Uttora Coffe House'),
                     ],),
                   ),
                 ),
                 Container(
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(12),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                       Container(width: 122,height: 84,decoration: BoxDecoration(color: AppColor.Main , borderRadius: BorderRadius.circular(12)),),
                       SizedBox(height: 4,),
                       Text('Buffalo Pizza.' , style: TextStyle(fontWeight: FontWeight.w600),),
                       SizedBox(height: 4,),
                       Text('Cafenio Coffee Club'),
                     ],),
                   ),
                 ),
               ],),


             ],
           ),
         ),
       ),




     );
   }
 }
