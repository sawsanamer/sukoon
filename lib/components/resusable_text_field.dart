import 'package:flutter/material.dart';

import '../constants.dart';

class ReusableTextField extends StatefulWidget {
  //the default is that the text is not obscure and the keyboard type is the normal one

  final IconData prefixIcon;
  final IconData suffixIcon;

  final String title;
  final Function onChanged;
  final TextInputType keyboardType;
  final bool obscureText;
  ReusableTextField(
      {this.prefixIcon,
      this.title,
      this.keyboardType,
      this.onChanged,
      this.obscureText,
      this.suffixIcon});

  @override
  _ReusableTextFieldState createState() => _ReusableTextFieldState();
}

class _ReusableTextFieldState extends State<ReusableTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 24, left: 24, right: 24),
      child: TextFormField(
        style: kSmallFont,
        obscureText: widget.obscureText == null || widget.obscureText == false
            ? false
            : true,
        keyboardType: widget.keyboardType == null
            ? TextInputType.text
            : widget.keyboardType,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xff82879B)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xff82879B)),
            ),
            prefixIcon: Icon(
              widget.prefixIcon,
              color: Colors.black,
            ),
            suffixIcon: widget.suffixIcon != null
                ? Icon(
                    widget.suffixIcon,
                    color: Colors.black,
                  )
                : null,
            labelText: "  " + widget.title,
            labelStyle: kSmallFont),
      ),
    );
  }
}
