import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../coustom_widget/custom_elevated_button.dart';
import '../coustom_widget/custom_signIn_signUp_resend.dart';
import '../coustom_widget/custom_star_image.dart';

class Login_With_Mob_Num extends StatefulWidget {
  const Login_With_Mob_Num({super.key});

  @override
  State<Login_With_Mob_Num> createState() => _Login_With_Mob_NumState();
}

class _Login_With_Mob_NumState extends State<Login_With_Mob_Num> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
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

                    Custom_Star_Image(),
              
                    SizedBox(height: 30,),
                    Text("Login With \nMobile Number",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight:FontWeight.bold),),
                    Text("Welcome Back Out App !!!",style: TextStyle(color: Colors.grey),),
              
                    SizedBox(height: 25,),
              
                    Row(
                      children: [
                        Container(
                          height: 50,width: 100,
                          //padding: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 2,
                                child: CountryCodePicker(
                                  initialSelection: 'US',
                                  showCountryOnly: false,
                                  alignLeft: false,
                                  textStyle: const TextStyle(color: Colors.white),
                                  dialogSize: Size(
                                    MediaQuery.of(context).size.width * 0.8,
                                    MediaQuery.of(context).size.height * 0.6,
                                  ),
                                ),
                              ),
                              //Icon(Icons.keyboard_arrow_down_outlined,color: Colors.white,)
                            ],
                          ),
                        ),
              
                        SizedBox(width: 10,),
                        Expanded(
                          flex: 3,
                          child: SizedBox(
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Mobile Number",
                                hintStyle: TextStyle(color: Colors.grey,fontSize: 14),
                                filled: true,
                                fillColor: Colors.black54,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none
                                )
                              ),
                            ),
                          ),
                        )
              
                      ],
                    ),
                    SizedBox(height: 40,),
                    Center(
                        child: Custom_Elevated_Button(text: 'LOGIN', width: 300, height: 50,)),
                    SizedBox(height: 40),

                    Row(
                      children:[
                        Expanded(
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
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text("Or",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                        ),
                        Expanded(
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
                        ),
                      ],
                    ),


                    SizedBox(height: 40),

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

                    SizedBox(height: 100,),

                    Custom_SignIn_SignUp_Resend(text: "Don't have an account?", buttontext: 'Sign Up', onPressed: () {  },),

                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}