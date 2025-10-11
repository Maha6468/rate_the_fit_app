import 'package:flutter/material.dart';

class OtpSuccessScreen extends StatefulWidget {
  const OtpSuccessScreen({super.key});

  @override
  State<OtpSuccessScreen> createState() => _OtpSuccessScreenState();
}

class _OtpSuccessScreenState extends State<OtpSuccessScreen> {
  @override
  void initState() {
    super.initState();

    // 3 seconds পরে home page এ navigate
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home'); // /home route define করতে হবে
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87, // dark background
      body: Center(
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
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "You will be redirected to the home page in a few seconds",
                style: TextStyle(color: Colors.white70, fontSize: 13),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              CircularProgressIndicator(color: Colors.yellowAccent,),
            ],
          ),
        ),
      ),
    );
  }
}
