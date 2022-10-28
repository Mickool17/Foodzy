import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class addphone extends StatelessWidget {
   static const String idScreen = "addphone";
  const addphone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: 
      
      Center(
        child: SafeArea(
          child: Column(children: [
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:  [
                GestureDetector( onTap: () 
                {
                     
                 
                },  child:  Text(
                  "Skip",
                  style: GoogleFonts.urbanist(fontSize: 16.sp,fontWeight: FontWeight.w400),)),

                Icon(Icons.arrow_forward_ios,size: 15.r,),
                SizedBox(width: 20.w,)
              ],
            ),
          SizedBox(height: 60.h,),
            const Image(image: AssetImage("images/phone.png")),


           SizedBox(height: 60.h,),

            Padding(
              padding:  EdgeInsets.only(right: 45.r),
              child: Column(
                children: [
                  Text("Enter your phone number",style: GoogleFonts.poppins(fontSize: 22.sp,fontWeight: FontWeight.w600),),
                  Text("Enter yout phone number to use Foodzy and\nenjoy your food :)",style: GoogleFonts.poppins(fontSize: 13.sp,fontWeight: FontWeight.w400),),
                ],
              ),
            ),
           
         SizedBox(height: 50.h,),
           Row(
             children: [
        SizedBox(width: 30.w,),
               Text("Phone Number",style: GoogleFonts.poppins(fontSize: 14.sp,fontWeight: FontWeight.w400),),
             ],
           ),
         SizedBox(height: 20.h,),

       Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.r),
                  child: const TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(34, 34, 59, 1), width: 2),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Color.fromRGBO(34, 34, 59, 1),
                        )),
                        hintText: "  Enter your phone number"),
                  )),

                 SizedBox(height: 20.h,),
                  MaterialButton(
                minWidth: 350.w,
                height: 44.h,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: const Color.fromRGBO(34, 34, 59, 1),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, verify.idScreen, (route) => false);
                },
                child: Text(
                  " Next",
                  style: GoogleFonts.poppins(
                      fontSize: 13.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            
          ],),
        ),
      )),

    );
  }
}
class verify extends StatelessWidget {
   static const String idScreen = "verify";
  const verify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: 
      
      Center(
        child: SafeArea(
          child: Column(children: [
            SizedBox(height: 30.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:   [
             

               Icon(Icons.arrow_back_ios,size: 20.r,),
               SizedBox(width: 20.w,),
                Text("Verify phone number",style: GoogleFonts.urbanist(fontSize: 16.sp,fontWeight: FontWeight.w700, color: const Color.fromRGBO(34, 34, 59, 1),),),
                SizedBox(width: 60.w,),
              ],
            ),
           SizedBox(height: 60.h,),
            const Image(image: AssetImage("images/verify.png")),


            SizedBox(height: 60.h,),

            Padding(
              padding:  EdgeInsets.only(right: 45.r),
              child: Column(
                children: [
                  Text("Verify phone number",style: GoogleFonts.poppins(fontSize: 22.sp,fontWeight: FontWeight.w600),),
                  Text("Enter the 4- Digit code sent to you at\n                  +2348062589858",style: GoogleFonts.poppins(fontSize: 13.sp,fontWeight: FontWeight.w400),),
                ],
              ),
            ),
           
            SizedBox(height: 50.h,),
           Row(
             children: [
               SizedBox(width: 30.w,),
               Text("Phone Number",style: GoogleFonts.poppins(fontSize: 14.sp,fontWeight: FontWeight.w400),),
             ],
           ),
            SizedBox(height: 20.h,),

           const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(34, 34, 59, 1), width: 2),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Color.fromRGBO(34, 34, 59, 1),
                        )),
                        hintText: "  Enter your phone number"),
                  )),

                   SizedBox(height: 20.h,),
                  MaterialButton(
                minWidth: 350.w,
                height: 44.h,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: const Color.fromRGBO(34, 34, 59, 1),
                onPressed: () {},
                child: Text(
                  " Verify",
                  style: GoogleFonts.poppins(
                      fontSize: 13.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20.h,),
              Row(
                children: [
                  SizedBox(width: 90.w,),
                  Text("Didnt receive code?"),
                  Text("Resend Again")
                ],
              )
            
          ],),
        ),
      )),

    );
  }
}