import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import 'package:rate_the_fit_app/coustom_widget/custom_elevated_button.dart';
import 'package:rate_the_fit_app/coustom_widget/custom_signIn_signUp_resend.dart';
import 'package:rate_the_fit_app/screen/practice.dart';

import '../coustom_widget/custom_congratulations.dart';
import '../coustom_widget/custom_star_image.dart';

class OTP_Varification extends StatefulWidget {
   OTP_Varification({super.key});

  @override
  State<OTP_Varification> createState() => _OTP_VarificationState();
}

class _OTP_VarificationState extends State<OTP_Varification> {
   final pinController = TextEditingController();

   final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {

    final defaultPinTheme = PinTheme(
      width: 90,
      height: 60,
      textStyle: const TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade800),
      ),
    );


    return Scaffold(
      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Color(0xFF3B2F2F)],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight
            )
        ),
        child: SafeArea(
          child: SingleChildScrollView(
           // physics:  BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Custom_Star_Image(),
                  SizedBox(height: 30,),
                  Text("OTP \nVerification", style: TextStyle(color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),),
                  Text("Enter the code from the sms we sent to",
                    style: TextStyle(color: Colors.grey),),
                  Text("+12345667890", style: TextStyle(
                      color: Colors.grey.shade50, fontWeight: FontWeight.w500),),
                  SizedBox(height: 20,),


                  Center(
                    child: Pinput(
                      length: 4,
                      controller: pinController,
                      focusNode: focusNode,
                      defaultPinTheme: defaultPinTheme,
                      onCompleted: (pin) {
                        debugPrint('Entered PIN: $pin');
                      },
                    ),
                  ),



                  SizedBox(height: 10,),

                  Custom_SignIn_SignUp_Resend(text: "Don't receive the OTP?",
                    buttontext: 'Resend',
                    onPressed: () {},),

                  SizedBox(height: 10,),

                  Center(child: Custom_Elevated_Button(
                    text: 'Submit', height: 60, width: 300, onPressed: () {

                    showDialog(
                      context: context,
                      barrierDismissible: false, // user dismiss করতে পারবে না
                      builder: (context) => Custom_Congratulations(),
                    );


                    Future.delayed(Duration(seconds: 20), () {
                      Navigator.of(context).pop(); // dialog close
                      Navigator.pushReplacementNamed(context, '/home'); // home page
                    });


                  },))


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}