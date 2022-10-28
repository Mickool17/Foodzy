import 'package:flutter/material.dart';
import 'package:foodzy/onboarding/page1.dart';
import 'package:foodzy/onboarding/page2.dart';
import 'package:foodzy/onboarding/page3.dart';
import 'package:foodzy/signinscreen.dart';
import 'package:foodzy/signupscreen.dart';
import 'package:foodzy/splashscreen.dart';
import 'package:foodzy/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch:  Colors.blue,
      ),
     initialRoute: test.idScreen,
      routes:
      {
        page2.idScreen: (context) => const page1(),
        page3.idScreen: (context) => const page3(),
        page1.idScreen: (context) => const page1(),
        Splashscreen.idScreen: (context) => const Splashscreen(),
        signinscreen.idScreen: (context) => const signinscreen(),
        signupscreen.idScreen: (context) => const signupscreen(),
        test.idScreen: (context) => const test(),
    
      },
    );
  }
}


    
  
