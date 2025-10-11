import 'package:flutter/material.dart';
import 'package:rate_the_fit_app/screen/login_with_mob_num.dart';
import 'package:rate_the_fit_app/screen/otp_varification.dart';
import 'package:rate_the_fit_app/screen/practice.dart';
import 'package:rate_the_fit_app/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:OTP_Varification(),
    );
  }
}
