import 'package:flutter/material.dart';


class Coustem2Appbar extends StatelessWidget implements PreferredSizeWidget {
  final String? Title;
  const Coustem2Appbar({super.key,required this.Title});

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return  AppBar(
    leading: IconButton(
    onPressed: (){
    Navigator.pop(context);
    },
    icon: Icon(Icons.arrow_back_ios_new,size: 26,color: Color(0xFF181C2E),)
    ),
    title: Text(Title!,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Color(0xFF181C2E)),),
    centerTitle: false,
    );
  }
}
