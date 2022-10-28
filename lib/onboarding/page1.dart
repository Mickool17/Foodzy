import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
             SizedBox(
              height: 20.h,
            ),
            
             SizedBox(
              height: 50.h,
            ),
            const Image(image: AssetImage("images/page1.png")),
            SizedBox(
              height: 50.h,
            ),
            Text(
              "All your Favourites",
              style: GoogleFonts.poppins(
                  fontSize: 22.sp, fontWeight: FontWeight.bold),
            ),
            Text(
              "order from the best local resturants within\n    Nigeria with easy,on demand delivery ",
              style: GoogleFonts.poppins(fontSize: 15.sp),
            )
          ],
        ),
      )),
    );
  }
}
