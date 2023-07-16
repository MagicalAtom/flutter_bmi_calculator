import 'package:flutter/material.dart';





class Message extends StatelessWidget {
 final Color messageColor ;
 final String text;
  const Message({super.key,required this.messageColor,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text('$text',style: TextStyle(
      color: messageColor,
    ),);
  }
}