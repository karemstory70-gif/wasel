  import 'package:flutter/material.dart';
import 'package:wasel/core/Models/burger_model.dart';

import '../../../core/Theme/app_color.dart';

 class Burgerwidget extends StatelessWidget {
   final BurgerModel item;

   const Burgerwidget({super.key, required this.item});

   @override
   Widget build(BuildContext context) {
     return Container(
       padding: EdgeInsets.all(8),
       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(12),
       ),
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
           Container(width: 122,height: 84,decoration: BoxDecoration(color: AppColor.mainColor , borderRadius: BorderRadius.circular(12)),),
           SizedBox(height: 4,),
           Text(item.name , style: TextStyle(fontWeight: FontWeight.w600),),
           SizedBox(height: 4,),
           Text(item.desc),
           SizedBox(height: 10,),
           Row(spacing: 60,
             children: [
               Text('\$${item.price}'),
               Container(
                 padding: EdgeInsets.all(4),
                 decoration: BoxDecoration(shape: BoxShape.circle , color: AppColor.orange),child: Icon(Icons.add , color: Colors.white,),)
             ],
           )
         ],),
       ),
     );
   }
 }
