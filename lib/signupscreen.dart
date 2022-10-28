import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodzy/addphone.dart';
import 'package:foodzy/onboarding/page3.dart';
import 'package:foodzy/signinscreen.dart';
import 'package:foodzy/splashscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class signupscreen extends StatefulWidget {
  static const String idScreen = "Signupscreen";
  const signupscreen({super.key});

  @override
  State<signupscreen> createState() => _signupscreenState();
}

class _signupscreenState extends State<signupscreen> {
  @override
  Widget build(BuildContext context) {
    final currentwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
       child: SingleChildScrollView(
          child: Center(
         
              child: Column(children: [
                SizedBox(
                  height: 30.h,
                ),
                Row(
              
                  children: [
                     SizedBox(
                      width: 20.w,
                    ),
                    GestureDetector(
                      child:  Icon(
                        Icons.arrow_back_ios,
                        size: 17.r,
                      ),
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, signinscreen.idScreen, (route) => false);
                      },
                    ),
                   
                    SizedBox(width: 120.w,),
                    
                     Text(
                  "Sign Up",
                  style: GoogleFonts.urbanist(fontSize: 16.sp,fontWeight: FontWeight.w700),
                      ),
                    
                  ],
                ),
                SizedBox(height: 50.h,),
               Row(
                    children: [
                      SizedBox(width: 20.w,),
                      Text(
                        " Create An Account",
                        style: GoogleFonts.poppins(
                            fontSize: 22.sp, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                
                 SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                     SizedBox(
                      width: 25.w,
                    ),
                    Text(
                      "Enter your name, Email address and\npassword for signup.",
                      style: GoogleFonts.poppins(
                          fontSize: 13.sp, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                 SizedBox(
                  height: 50.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30.w,
                    ),
                    Text(
                  "Full Name",
                  style: GoogleFonts.poppins(fontSize: 14.sp,fontWeight: FontWeight.w400)),
                  ],
                ),
                 Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.r),
                    child: const TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(34, 34, 59, 1), width: 2),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromRGBO(34, 34, 59, 1),
                          )),
                          hintText: "  Enter your full Name"),
                    )),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children:  [
                    SizedBox(
                      width: 30.w,
                    ),
                    Text(
                  "Email Address",
                  style: GoogleFonts.poppins(fontSize: 14.sp,fontWeight: FontWeight.w400)),
                  ],
                ),
                 Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.r),
                    child: const TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(34, 34, 59, 1), width: 2),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromRGBO(34, 34, 59, 1),
                          )),
                          hintText: " Enter your email address"),
                    )),
                 SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30.w,
                    ),
                    Text(
                  "Password",
                  style: GoogleFonts.poppins(fontSize: 14.sp,fontWeight: FontWeight.w400)),
                  ],
                ),
                 Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.r),
                    child: const TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(34, 34, 59, 1), width: 2),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromRGBO(34, 34, 59, 1),
                          )),
                          hintText: "  ......."),
                    )),
                 SizedBox(
                  height: 25.h,
                ),
                MaterialButton(
                  minWidth: 350.w,
                  height: 44.h,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: const Color.fromRGBO(34, 34, 59, 1),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,addphone.idScreen, (route) => false);
                  },
                  child: Text(
                    "SIGN UP",
                    style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              Text(
                  "OR",
                  style: GoogleFonts.urbanist(fontSize: 14.sp,fontWeight: FontWeight.w400)),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  width: 350.w,
                  height: 44.h,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.white, //background color of button
                          side:  BorderSide(
                            width: 2.w,
                            color: Color.fromRGBO(34, 34, 59, 1),
                          ), //border width and color
                          elevation: 3, //elevation of button
                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(8)),
                          padding: EdgeInsets.all(
                              10.r) //content padding inside button
                          ),
                      onPressed: () {},

                      //code to execute when this button is pressed.

                      child: Row(
                        children: [
                          SizedBox(
                            width: 80.w,
                          ),
                          const Image(image: AssetImage("images/google.png")),
                           SizedBox(
                            width: 10.w,
                          ),
                          Text("Continue with Google",
                              style: GoogleFonts.poppins(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black)),
                        ],
                      )),
                ),
                SizedBox(
                  height: 50.h,
                ),
                GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       SizedBox(
                        width: 10.w,
                      ),
                      Text("Already have an account ?",
                          style: GoogleFonts.poppins(
                              fontSize: 12.sp, fontWeight: FontWeight.w600)),
                      Text(
                        "Sign in",
                        style: GoogleFonts.poppins(
                            fontSize: 12.sp, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, signinscreen.idScreen, (route) => false);
                  },
                )
              ]),
            ),
          ),
        ),
      
    );
  }
}
