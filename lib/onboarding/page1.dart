import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodzy/onboarding/page3.dart';
import 'package:google_fonts/google_fonts.dart';

class page1 extends StatelessWidget {
  static const String idScreen = "page1";
  const page1({super.key});

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
            const Image(image: AssetImage("images/page1.png")),
            const SizedBox(
              height: 50,
            ),
            Text(
              "All your Favourites",
              style: GoogleFonts.poppins(
                  fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              "order from the best local resturants within\n    Nigeria with easy,on demand delivery ",
              style: GoogleFonts.poppins(fontSize: 15),
            )
          ],
        ),
      )),
    );
  }
}
