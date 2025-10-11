import 'package:flutter/material.dart';

class Custom_Star_Image extends StatelessWidget {
  const Custom_Star_Image({super.key});

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.topRight,
      child: CircleAvatar(
        radius: 28,
        backgroundColor: Colors.black,
        child:Image.asset("assets/images/maha.png",height: 100,width: 100,fit:BoxFit.cover,),
      ),
    );
  }
}
