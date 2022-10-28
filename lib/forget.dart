import 'package:flutter/material.dart';
import 'package:foodzy/signinscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class forget extends StatelessWidget {
  static const String idScreen = "forget";
  const forget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Center(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, signinscreen.idScreen, (route) => false);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Forget password",
                    style: GoogleFonts.urbanist(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(34, 34, 59, 1),
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              const Image(image: AssetImage("images/forget.png")),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 33,
                        ),
                        Text(
                          "Forgot Password",
                          style: GoogleFonts.poppins(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Text(
                      "Select the contact details we should use to\nreset your password",
                      style: GoogleFonts.poppins(
                          fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(context,
                          ForgetEmailvVerify.idScreen, (route) => false);
                    },
                    child: Container(
                      height: 66,
                      width: 320,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          shape: BoxShape.rectangle,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        children: [
                          const SizedBox(width: 10),
                          const Image(image: AssetImage("images/email.png")),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 14,
                              ),
                              Text(
                                "Email",
                                style: GoogleFonts.poppins(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Code sennt to you via email",
                                style: GoogleFonts.poppins(
                                    fontSize: 13, fontWeight: FontWeight.w400),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(context,
                            ForgetPasswordVerify.idScreen, (route) => false);
                      },
                      child: Container(
                        height: 66,
                        width: 320,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            shape: BoxShape.rectangle,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            const Image(image: AssetImage("images/email.png")),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "Phone number",
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Code sennt to you via email",
                                  style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ]))
            ],
          ),
        ),
      )),
    );
  }
}

class ForgetEmailvVerify extends StatelessWidget {
  static const String idScreen = "ForgetEmailvVerify";
  const ForgetEmailvVerify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Center(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, forget.idScreen, (route) => false);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Verify phone number",
                    style: GoogleFonts.urbanist(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(34, 34, 59, 1),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              const Image(image: AssetImage("images/forgotemail.png")),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 45),
                child: Column(
                  children: [
                    Text(
                      "Verify email",
                      style: GoogleFonts.poppins(
                          fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Enter the 4- Digit code sent to you at\n                  +2348062589858",
                      style: GoogleFonts.poppins(
                          fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Phone Number",
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
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
                height: 20,
              ),
              MaterialButton(
                minWidth: 350,
                height: 44,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: const Color.fromRGBO(34, 34, 59, 1),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, ResetPassword.idScreen, (route) => false);
                },
                child: Text(
                  " Verify",
                  style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 90,
                  ),
                  Text("Didnt receive code?"),
                  Text("Resend Again")
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}

///RESET PASSWORD SCREEN

class ForgetPasswordVerify extends StatelessWidget {
  static const String idScreen = "ForgetPasswordVerify";
  const ForgetPasswordVerify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Center(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, forget.idScreen, (route) => false);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Verify phone number",
                    style: GoogleFonts.urbanist(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(34, 34, 59, 1),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              const Image(image: AssetImage("images/verify.png")),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 45),
                child: Column(
                  children: [
                    Text(
                      "Verify phone number",
                      style: GoogleFonts.poppins(
                          fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Enter the 4- Digit code sent to you at\n                  +2348062589858",
                      style: GoogleFonts.poppins(
                          fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Phone Number",
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
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
                height: 20,
              ),
              MaterialButton(
                minWidth: 350,
                height: 44,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: const Color.fromRGBO(34, 34, 59, 1),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, ResetPassword.idScreen, (route) => false);
                },
                child: Text(
                  " Verify",
                  style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 90,
                  ),
                  Text("Didnt receive code?"),
                  Text("Resend Again")
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}

/// reset password screene main

class ResetPassword extends StatelessWidget {
  static const String idScreen = "ResetPassword";
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Center(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, forget.idScreen, (route) => false);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Verify phone number",
                    style: GoogleFonts.urbanist(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(34, 34, 59, 1),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              const Image(image: AssetImage("images/reset.png")),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 45),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Reset your password",
                      style: GoogleFonts.poppins(
                          fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 30,
                  ),
                  Text("New Password"),
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
                height: 10,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 30,
                  ),
                  Text("Confirm password"),
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
              const SizedBox(
                height: 15,
              ),
              MaterialButton(
                minWidth: 350,
                height: 44,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: const Color.fromRGBO(34, 34, 59, 1),
                onPressed: () {},
                child: Text(
                  " Reset",
                  style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 90,
                  ),
                  Text("Didnt receive code?"),
                  Text("Resend Again")
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
