import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:rate_the_fit_app/coustom_widget/custom_elevated_button.dart';
import 'package:rate_the_fit_app/coustom_widget/custom_signIn_signUp_resend.dart';

import '../coustom_widget/custom_star_image.dart';

class OTP_Varification extends StatefulWidget {
  const OTP_Varification({super.key});

  @override
  State<OTP_Varification> createState() => _OTP_VarificationState();
}

class _OTP_VarificationState extends State<OTP_Varification> {
  final TextEditingController _otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black,Color(0xFF3B2F2F)],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight
            )
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Custom_Star_Image(),
                SizedBox(height: 30,),
                Text("OTP \nVerification",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight:FontWeight.bold),),
                Text("Enter the code from the sms we sent to",style: TextStyle(color: Colors.grey),),
                Text("+12345667890",style: TextStyle(color: Colors.grey.shade50,fontWeight: FontWeight.w500),),
                SizedBox(height: 20,),

                Center(
                  child: Pinput(
                    length: 4,
                    controller: _otpController,
                    showCursor: true,
                    defaultPinTheme: PinTheme(
                      width: 80,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade800),
                      ),
                      textStyle:  TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10,),

                Custom_SignIn_SignUp_Resend(text: "Don't receive the OTP?", buttontext: 'Resend', onPressed: () {  },),

                SizedBox(height: 10,),

                Center(child: Custom_Elevated_Button(text: 'Submit', height: 60, width: 300,))




              ],
            ),
          ),
        ),
      ),
    );
  }
}
