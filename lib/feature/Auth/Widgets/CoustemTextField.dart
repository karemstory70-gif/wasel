import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Coustemtextfield extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final IconData? icon;
  final bool isbassword;
  final String? Function(String?)? validator;
  const Coustemtextfield({
    super.key,
    required this.controller,
    required this.hint,
    this.icon,
    required this.isbassword, this.validator,
  });

  @override
  State<Coustemtextfield> createState() => _CoustemtextfieldState();
}

class _CoustemtextfieldState extends State<Coustemtextfield> {

  late bool _obscureText;

  @override
  void initState() {
    _obscureText = widget.isbassword;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      obscureText: _obscureText ,
      controller: widget.controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
        suffixIcon: _obscureText ? InkWell(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            } ,
            child: Icon(Icons.remove_red_eye)):null   ,
        fillColor: Color(0xffF0F5FA),
        filled: true,
        hintText: widget.hint,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffffF0F5FA)),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffffF0F5FA)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
