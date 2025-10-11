
import 'package:flutter/material.dart';

class Custom_Congratulations extends StatefulWidget {
  const Custom_Congratulations({super.key});

  @override
  State<Custom_Congratulations> createState() => _Custom_CongratulationsState();
}

class _Custom_CongratulationsState extends State<Custom_Congratulations> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xFF3B2F2F), // card color
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Icon(Icons.verified_rounded, color: Colors.yellowAccent, size: 60),
            SizedBox(height: 20),
            Text(
              "Congratulations!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "You will be redirected to the home page in a few seconds",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 11,
                decoration: TextDecoration.none,
                letterSpacing: -1

              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(color: Colors.white,),


        ],
        ),


      ),
    );
  }
}
