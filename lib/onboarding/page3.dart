import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
           SizedBox(
              height: 20.h,
            ),
            
          SizedBox(
              height: 50.h,
            ),
            const Image(image: AssetImage("images/page3.png")),
          SizedBox(
              height: 50.h,
            ),
            Text(
              "Choose Your Food ",
              style: GoogleFonts.poppins(
                  fontSize: 22.sp, fontWeight: FontWeight.bold),
            ),
            Text(
              "Easily find your type of food craving and \n        youll get delievery in wide range ",
              style: GoogleFonts.poppins(fontSize: 15.sp),
            )
          ],
        ),
      )),
    );
  }
}
