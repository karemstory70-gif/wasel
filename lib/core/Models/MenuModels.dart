import 'package:flutter/cupertino.dart';

class MenuModels{

  final String name;
  final IconData icon;
  final Color color;
  final Function()? ontap;

  MenuModels( {
    required this.color,
    required this.name,
    required this.icon,
     this.ontap,
});

}