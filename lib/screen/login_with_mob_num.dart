import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class Login_With_Mob_Num extends StatefulWidget {
  const Login_With_Mob_Num({super.key});

  @override
  State<Login_With_Mob_Num> createState() => _Login_With_Mob_NumState();
}

class _Login_With_Mob_NumState extends State<Login_With_Mob_Num> {
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
            padding: const EdgeInsets.all(20.0),
            child: Column(
             // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Align(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.black,
                    child:Image.asset("assets/images/maha.png",height: 100,width: 100,fit:BoxFit.cover,),
                  ),
                ),

              SizedBox(height: 30,),
              Text("Login With \nMobile Number",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight:FontWeight.bold),),
                Text("Welcome Back Out App !!!",style: TextStyle(color: Colors.grey),),

                SizedBox(height: 25,),

                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: CountryCodePicker(
                        initialSelection: 'US',
                        showCountryOnly: false,
                        alignLeft: false,
                        textStyle: const TextStyle(color: Colors.white),

                      ),

                    ),
                  ],
                )



            ],
            ),
          ),
        ),
      )
    );
  }
}
