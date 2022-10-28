import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodzy/onboarding/page3.dart';
import 'package:google_fonts/google_fonts.dart';

class page2 extends StatelessWidget {
  static const String idScreen = "page2";
  const page2({super.key});

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
            const Image(image: AssetImage("images/page2.png")),
            const SizedBox(
              height: 50,
            ),
            Text(
              "Free Delivery Offers",
              style: GoogleFonts.poppins(
                  fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              "Free delivery for our new customers via apple \n           pay and  otehr payment methods ",
              style: GoogleFonts.poppins(fontSize: 15),
            )
          ],
        ),
      )),
    );
  }
}
