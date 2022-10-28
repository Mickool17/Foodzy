import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodzy/onboarding/page3.dart';
import 'package:google_fonts/google_fonts.dart';

class page3 extends StatelessWidget {
  static const String idScreen = "page3";
  const page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            
            const SizedBox(
              height: 50,
            ),
            const Image(image: AssetImage("images/page3.png")),
            const SizedBox(
              height: 50,
            ),
            Text(
              "Choose Your Food ",
              style: GoogleFonts.poppins(
                  fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              "Easily find your type of food craving and \n        youll get delievery in wide range ",
              style: GoogleFonts.poppins(fontSize: 15),
            )
          ],
        ),
      )),
    );
  }
}
