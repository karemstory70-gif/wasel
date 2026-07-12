import 'package:flutter/material.dart';


class CoustemTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final IconData? icon;
  final bool isBassword;
  final String? Function(String?)? validator;
  const CoustemTextField({
    super.key,
    required this.controller,
    required this.hint,
    this.icon,
    required this.isBassword, this.validator,
  });

  @override
  State<CoustemTextField> createState() => _CoustemTextFieldState();
}

class _CoustemTextFieldState extends State<CoustemTextField> {

  late bool _obscureText;

  @override
  void initState() {
    _obscureText = widget.isBassword;
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
          borderSide: BorderSide(color: Color(0xFFF0F5FA)),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFF0F5FA)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
