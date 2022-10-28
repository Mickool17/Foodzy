import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodzy/Forget.dart';
import 'package:foodzy/addphone.dart';
import 'package:foodzy/onboarding/page1.dart';
import 'package:foodzy/onboarding/page2.dart';
import 'package:foodzy/onboarding/page3.dart';
import 'package:foodzy/signinscreen.dart';
import 'package:foodzy/signupscreen.dart';
import 'package:foodzy/splashscreen.dart';
import 'package:foodzy/test.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.removeAfter(Initialization);
  runApp(MyApp());
}

Future Initialization(BuildContext? context) async {
  await Future.delayed(Duration(seconds: 4));
}

// void main() {
//   runApp(const MyApp());
// }



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
       initialRoute: Splashscreen.idScreen,
      routes: {
        page2.idScreen: (context) => const page1(),
        page3.idScreen: (context) => const page3(),
        page1.idScreen: (context) => const page1(),
        Splashscreen.idScreen: (context) => const Splashscreen(),
        signinscreen.idScreen: (context) => const signinscreen(),
        signupscreen.idScreen: (context) => const signupscreen(),
        test.idScreen: (context) => const test(),
        addphone.idScreen: (context) => const addphone(),
        verify.idScreen: (context) => const verify(),
        forget.idScreen: (context) => const forget(),
        ForgetEmailvVerify.idScreen: (context) => const ForgetEmailvVerify(),
        ForgetPasswordVerify.idScreen: (context) =>
            const ForgetPasswordVerify(),
        ResetPassword.idScreen: (context) => const ResetPassword(),
      },
        );
      },
     
    );
    
  }
  
}
      
    
  

