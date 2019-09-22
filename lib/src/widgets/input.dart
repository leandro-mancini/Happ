import 'package:flutter/material.dart';

class HappInput extends StatelessWidget {
  final String labelText;
  final TextInputType keyboardType;
  final bool obscureText;
  final dynamic suffixIcon;

  HappInput({
    this.labelText,
    this.keyboardType,
    this.obscureText,
    this.suffixIcon
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: TextFormField(
        keyboardType: this.keyboardType,
        obscureText: this.obscureText,
        decoration: InputDecoration(
          contentPadding: new EdgeInsets.symmetric(vertical: 15, horizontal: 10.0),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF5acb8a),
              width: 2,
            )
          ),
          border: OutlineInputBorder(),
          labelText: this.labelText,
          suffixIcon: this.suffixIcon,
          labelStyle: TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          )
        ),
        style: TextStyle(
          fontSize: 20,
        )
      ),
    );
  }
}