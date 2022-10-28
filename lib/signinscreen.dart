import 'package:flutter/material.dart';
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
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 17,
                    ),
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, Splashscreen.idScreen, (route) => false);
                    },
                  ),
                  const SizedBox(
                    width: 130,
                  ),
                  const Text(
                    "SIGN IN",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(height: 50,),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Text(
                      "Welcome To Foodzy",
                      style: GoogleFonts.poppins(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                   SizedBox(width: 20,),
                  Text(
                      "Enter your phone number and\npassword to Sign in.",
                      style: GoogleFonts.poppins(
                          fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                ],
              ),
              
              const SizedBox(
                height: 50,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 30,
                  ),
                  Text("Phone Number"),
                ],
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
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
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 30,
                  ),
                  Text("Password"),
                ],
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
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
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                child: const Text(
                  "Forgot Password ?",
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
                onTap: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                minWidth: 350,
                height: 44,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: const Color.fromRGBO(34, 34, 59, 1),
                onPressed: () {},
                child: Text(
                  "SIGN IN",
                  style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("OR"),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 350,
                height: 44,
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
                        const SizedBox(
                          width: 80,
                        ),
                        const Image(image: AssetImage("images/google.png")),
                        const SizedBox(
                          width: 10,
                        ),
                        Text("Continue with Google",
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.black)),
                      ],
                    )),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text("Dont have an account ?",
                          style: GoogleFonts.poppins(
                              fontSize: 10, fontWeight: FontWeight.w400)),
                      Text(
                        "Create an account",
                        style: GoogleFonts.poppins(
                            fontSize: 11, fontWeight: FontWeight.w400),
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
