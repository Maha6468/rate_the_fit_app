import 'package:flutter/material.dart';

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height:MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.black,Color(0xFF3B2F2F)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight
          )
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                  //border: Border.all(color: Colors.red),
                  boxShadow: [
                  BoxShadow(
                  color: Colors.black54,
                  blurRadius: 15,
                  spreadRadius: 2,
                  offset: Offset(0, 5),
                ),
          ],
                ),
                child:Image.asset("assets/images/star.png",height: 100,width: 100,fit:BoxFit.cover,)
              ),
              SizedBox(height: 30,),
              Text("Rate The Fit App",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.amber.shade50),),

            ],
          ),
        ),
      ),


    );
  }
}
