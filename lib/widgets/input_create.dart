import 'package:flutter/material.dart';
import 'package:profile/constants/constanse.dart';

class InputField extends StatelessWidget {
  final String TextFieldHint;
  final TextEditingController Controller;
  final String HelperText;
  const InputField({super.key, required this.TextFieldHint,required this.Controller,required this.HelperText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        width: 100,
        child: TextField(
          controller: Controller,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          style: TextStyle(color: TextFieldColor,fontSize: 30),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: '$TextFieldHint',
            helperText: HelperText,
            helperStyle: TextStyle(color: TextFieldColor),
            hintStyle: TextStyle(
                color: TextFieldColor, fontSize: 30, fontFamily: 'vz'),
          ),
        ),
      ),
    );
  }
}
