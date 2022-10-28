import 'dart:math';

import 'package:flutter/material.dart';

class test extends StatefulWidget {
  static String idScreen = "test";
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  bool isSignupscreen = true;
  static const Color activeColor =Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 250,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/Rectangle.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: (() {
                              setState(() {
                                isSignupscreen = false;
                              });
                            }),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 180,
                                ),
                               Text(
                                  "Sign Up",
                                  style: TextStyle(
                                     color:! isSignupscreen ? activeColor:Colors.white70,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                if(!isSignupscreen)// INLINE IF 
                                Container(
                                  margin: const EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 55,
                                 color:Colors.white,
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: (() {
                              setState(() {
                                isSignupscreen = true;
                              });
                            }),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 180,
                                ),
                                Text(
                                  "Sign in",
                                  style: TextStyle(
                                      color: isSignupscreen ? activeColor:Colors.white70,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                               if( isSignupscreen)// INLINE IF 
                                Container(
                                  margin: EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 55,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
