import 'package:flutter/material.dart';

class Custom_Star_Image extends StatelessWidget {
  final Alignment alignment;
  const Custom_Star_Image({super.key, required this.alignment});

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: alignment,
      child: CircleAvatar(
        radius: 28,
        backgroundColor: Colors.black,
        child:Image.asset("assets/images/star.png",height: 100,width: 100,fit:BoxFit.cover,),
      ),
    );
  }
}
