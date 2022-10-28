import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodzy/Forget.dart';
import 'package:foodzy/onboarding/page3.dart';
import 'package:foodzy/signupscreen.dart';
import 'package:foodzy/splashscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class signinscreen extends StatelessWidget {
  static const String idScreen = "Signinscreen";
  const signinscreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 17.r,
                    ),
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, Splashscreen.idScreen, (route) => false);
                    },
                  ),
                   SizedBox(
                    width: 130.w,
                  ),
                  const Text(
                    "SIGN IN",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Welcome To Foodzy",
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
                    width: 20.w,
                  ),
                  Text(
                    "Enter your phone number and\npassword to Sign in.",
                    style: GoogleFonts.poppins(
                        fontSize: 13.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
               SizedBox(
                height: 50.h,
              ),
              Row(
                children:  [
                  SizedBox(
                    width: 30.w,
                  ),
                  Text(
                  "Phone Number",
                  style: GoogleFonts.poppins (fontSize: 14.sp,fontWeight: FontWeight.w400)),
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
                        hintText: "  Enter your phone number"),
                  )),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children:  [
                  SizedBox(
                    width: 30.w,
                  ),
                  const Text("Password"),
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
                height: 15.h,
              ),
              GestureDetector(
                child: Text(
                  "Forgot Password",
                  style: GoogleFonts.urbanist(fontSize: 12.sp,fontWeight: FontWeight.w400),
                ),
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, forget.idScreen, (route) => false);
                },
              ),
              SizedBox(
                height: 30.h,
              ),
              MaterialButton(
                minWidth: 350.w,
                height: 44.h,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: const Color.fromRGBO(34, 34, 59, 1),
                onPressed: () {},
                child: Text(
                  "SIGN IN",
                  style: GoogleFonts.poppins(
                      fontSize: 13.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
               SizedBox(
                height: 10.h,
              ),
              const Text("OR"),
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
                        side: const BorderSide(
                          width: 2,
                          color: Color.fromRGBO(34, 34, 59, 1),
                        ), //border width and color
                        elevation: 3, //elevation of button
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(8)),
                        padding: const EdgeInsets.all(
                            10) //content padding inside button
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
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black)),
                      ],
                    )),
              ),
             SizedBox(
                height: 50.h,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 35.r),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       SizedBox(
                        width: 10.w,
                      ),
                      Text("Dont have an account ?",
                          style: GoogleFonts.poppins(
                              fontSize: 12.sp, fontWeight: FontWeight.w600)),
                      Text(
                        "Create an account",
                        style: GoogleFonts.poppins(
                            fontSize: 12.sp, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, signupscreen.idScreen, (route) => false);
                  },
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
