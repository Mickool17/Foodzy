import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodzy/onboarding/page1.dart';
import 'package:foodzy/onboarding/page2.dart';
import 'package:foodzy/onboarding/page3.dart';
import 'package:foodzy/signinscreen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Splashscreen extends StatefulWidget {
  static const String idScreen = "Splashscreen";
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  final _controller = PageController();
  void nextPage() {
    _controller.animateToPage(_controller.page!.toInt() + 1,
        duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
  }

  void previousPage() {
    _controller.animateToPage(_controller.page!.toInt() - 1,
        duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
  }

  bool onLastPage = false;
  bool onSecondPage = false;
  bool onFirstPage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          SizedBox(
            height: 80.h,
          ),
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:  [
                Text(
                  "Skip",
                  style: GoogleFonts.urbanist(fontSize: 16.sp,fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 10.r,
                ),
                SizedBox(
                  width: 30.w,
                )
              ],
            ),
            onTap: () {
              _controller.jumpToPage(2);
            },
          ),
          SizedBox(
            child: Container(
              height: 500.h,
              child: PageView(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    onLastPage = (index == 2);
                    onSecondPage = (index == 1);
                    onFirstPage = (index == 0);
                  });
                },
                children: const [
                  page1(),
                  page2(),
                  page3(),
                ],
              ),
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            axisDirection: Axis.horizontal,
            effect:  SlideEffect(
              dotHeight: 6.h,
              dotWidth: 6.w,
              dotColor: const Color.fromARGB(34, 34, 59, 1),
              activeDotColor: const Color.fromRGBO(34, 34, 59, 1),
            ),
          ),
           SizedBox(
            height: 100.h,
          ),
          onLastPage
              ? MaterialButton(
                  minWidth: 350.w,
                  height: 40.h,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: const Color.fromRGBO(34, 34, 59, 1),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, signinscreen.idScreen, (route) => false);
                  },
                  child: Text(
                    "Get Started ",
                    style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              : MaterialButton(
                  minWidth: 350.w,
                  height: 40.h,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: const Color.fromRGBO(34, 34, 59, 1),
                  onPressed: () {
                    nextPage();
                  },
                  child: Text(
                    "Next",
                    style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
        ]));
  }
}
