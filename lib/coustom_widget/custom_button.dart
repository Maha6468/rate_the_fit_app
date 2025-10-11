import 'package:flutter/material.dart';

class Custom_Button extends StatelessWidget {
  final String text;
  const Custom_Button({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,height: 50,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.brown[900],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))

          ),
          onPressed: (){

      }, child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text,style: TextStyle(color: Colors.white,fontSize: 16),),
          SizedBox(width: 10,),
          Icon(Icons.arrow_forward,color: Colors.white,)
        ],
      )
      ),
    );
  }
}
