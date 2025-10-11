import 'package:flutter/material.dart';

class Custom_SignIn_SignUp_Resend extends StatelessWidget {
  final String text;
  final String buttontext;
  final VoidCallback onPressed;

  const Custom_SignIn_SignUp_Resend({super.key, required this.text, required this.buttontext, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text,
            style: TextStyle(color: Colors.white70)),
        TextButton(onPressed:onPressed, child:Text(buttontext,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
      ],
    );
  }
}
