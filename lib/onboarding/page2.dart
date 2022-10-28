import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            SizedBox(
              height: 20.h,
            ),
             SizedBox(
              height: 50.h,
            ),
            const Image(image: AssetImage("images/page2.png")),
            
           SizedBox(
              height: 50.h,
            ),
          SizedBox(
              height: 50.h,
            ),
            Text(
              "Free Delivery Offers",
              style: GoogleFonts.poppins(
                  fontSize: 22.sp, fontWeight: FontWeight.bold),
            ),
            Text(
              "Free delivery for our new customers via apple \n           pay and  otehr payment methods ",
              style: GoogleFonts.poppins(fontSize: 15.sp),
            )
          ],
        ),
      )),
    );
  }
}
