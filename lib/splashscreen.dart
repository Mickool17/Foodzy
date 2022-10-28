import 'dart:ui';

import 'package:flutter/material.dart';
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
          const SizedBox(
            height: 80,
          ),
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  "Skip",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 10,
                ),
                SizedBox(
                  width: 30,
                )
              ],
            ),
            onTap: () {
              _controller.jumpToPage(2);
            },
          ),
          SizedBox(
            child: Container(
              height: 500,
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
            effect: const SlideEffect(
              dotHeight: 6,
              dotWidth: 6,
              dotColor: Color.fromARGB(34, 34, 59, 1),
              activeDotColor: Color.fromRGBO(34, 34, 59, 1),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          onLastPage
              ? MaterialButton(
                  minWidth: 350,
                  height: 40,
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
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              : MaterialButton(
                  minWidth: 350,
                  height: 40,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: const Color.fromRGBO(34, 34, 59, 1),
                  onPressed: () {
                    nextPage();
                  },
                  child: Text(
                    "Next",
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
        ]));
  }
}
