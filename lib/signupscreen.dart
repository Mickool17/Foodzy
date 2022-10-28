import 'package:flutter/material.dart';
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
                const SizedBox(
                  height: 30,
                ),
                Row(
                 mainAxisAlignment: MainAxisAlignment.start,
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
                            context, signinscreen.idScreen, (route) => false);
                      },
                    ),
                   
                    
                    
                    const Text(
                        "SIGN Up",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    
                  ],
                ),
                SizedBox(height: 50,),
               Row(
                    children: [
                      SizedBox(width: 20,),
                      Text(
                        " Create An Account",
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
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Enter your name, Email address and\npassword for signup.",
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
                    Text("Full Name"),
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
                          hintText: "  Enter your full Name"),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 30,
                    ),
                    Text("Email Address"),
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
                          hintText: " Enter your email address"),
                    )),
                const SizedBox(
                  height: 20,
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
                  height: 25,
                ),
                MaterialButton(
                  minWidth: 350,
                  height: 44,
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
                GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text("Already have an account ?",
                          style: GoogleFonts.poppins(
                              fontSize: 10, fontWeight: FontWeight.w400)),
                      Text(
                        "Sign in",
                        style: GoogleFonts.poppins(
                            fontSize: 11, fontWeight: FontWeight.w400),
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
