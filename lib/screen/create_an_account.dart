import 'package:flutter/material.dart';

import '../coustom_widget/custom_elevated_button.dart';
import '../coustom_widget/custom_signIn_signUp_resend.dart';
import '../coustom_widget/custom_star_image.dart';
import 'otp_varification.dart';

class Create_An_Account extends StatelessWidget {
  const Create_An_Account({super.key});

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
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Custom_Star_Image(alignment: Alignment.topRight,),
                  SizedBox(height: 30,),
                  Text("Create an account",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight:FontWeight.bold),),
                  Text("Please enter below details and enjoy our amazing app",style: TextStyle(color: Colors.grey,letterSpacing: -.4),),
                  SizedBox(height: 25,),
                  Row(
                    children: [
                      Expanded(child: Row_TextField(hintText: 'First Name',)),
                      SizedBox(width: 10,),
                      Expanded(child: Row_TextField(hintText: 'Last Name',))
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row_TextField(hintText: 'User Name',),
                  SizedBox(height: 20),
                  Row_TextField(hintText: 'Email Address',),
                  SizedBox(height: 20),
                  Row_TextField(hintText: 'Mobile Number',),
                  SizedBox(height: 20),
                 Center(child: Custom_Elevated_Button(
                   text: 'Sign Up',
                   width: 300, height: 50,
                   onPressed: () {
                     Navigator.push(context,MaterialPageRoute(builder: (Context)=>OTP_Varification()));
                   },)),
                  SizedBox(height: 30),
                  Row(
                    children:[
                     Custom_Or_Left(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text("Or",
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                      ),
                      Custom_Or_Right(),
                    ],
                  ),
                  SizedBox(height: 35,),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.grey.shade900),
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 12),
                          ),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset("assets/images/google.png",fit:BoxFit.cover,height: 30,width: 20,),
                              Flexible(
                                child: Text(
                                  "Sign With Google",
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.grey.shade900),
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.apple_outlined,size: 30,),
                              Flexible(
                                child: Text(
                                  "Sign With Apple",
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 35,),
                  Custom_SignIn_SignUp_Resend(
                    text: 'Already have an account?',
                    buttontext: 'Sing in',
                    onPressed: () {  },),

                ],
              ),
            ),
          ),
        ),

      ),

    );
  }
}

class Custom_Or_Left extends StatelessWidget {
  const Custom_Or_Left({super.key});
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        height: 1.5,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.transparent,
              Colors.white12,
              Colors.white,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
      ),
    );
  }
}

class Custom_Or_Right extends StatelessWidget {
  const Custom_Or_Right({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 1.5,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.transparent,
              Colors.white12,
              Colors.white,
            ],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
          ),
        ),
      ),
    );
  }
}

class Row_TextField extends StatelessWidget {
  final String hintText;
  const Row_TextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 50,
      child: TextField(
        style: TextStyle(color: Colors.grey),
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.white),
            filled: true,
            fillColor: Colors.black54,

            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade900, width: 1.5), // normally color
              borderRadius: BorderRadius.circular(12),
            ),

            border: OutlineInputBorder(

                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
            )

        ),
      ),
    );
  }
}
