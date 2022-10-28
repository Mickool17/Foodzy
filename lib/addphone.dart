import 'package:flutter/material.dart';
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:  [
                GestureDetector( onTap: () 
                {
                     
                 
                },  child: const Text("Skip",style: TextStyle(fontSize: 16),)),

                const Icon(Icons.arrow_forward_ios,size: 15,),
                const SizedBox(width: 20,)
              ],
            ),
            const SizedBox(height: 60,),
            const Image(image: AssetImage("images/phone.png")),


            const SizedBox(height: 60,),

            Padding(
              padding: const EdgeInsets.only(right: 45),
              child: Column(
                children: [
                  Text("Enter your phone number",style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.w600),),
                  Text("Enter yout phone number to use Foodzy and\nenjoy your food :)",style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w400),),
                ],
              ),
            ),
           
           const SizedBox(height: 50,),
           Row(
             children: [
              const SizedBox(width: 30,),
               Text("Phone Number",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400),),
             ],
           ),
           const SizedBox(height: 20,),

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

                  const SizedBox(height: 20,),
                  MaterialButton(
                minWidth: 350,
                height: 44,
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
                      fontSize: 13,
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
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:   [
             

                const Icon(Icons.arrow_back_ios,size: 20,),
                const SizedBox(width: 20,),
                Text("Verify phone number",style: GoogleFonts.urbanist(fontSize: 16,fontWeight: FontWeight.w700, color: const Color.fromRGBO(34, 34, 59, 1),),),
                SizedBox(width: 60,),
              ],
            ),
            const SizedBox(height: 60,),
            const Image(image: AssetImage("images/verify.png")),


            const SizedBox(height: 60,),

            Padding(
              padding: const EdgeInsets.only(right: 45),
              child: Column(
                children: [
                  Text("Verify phone number",style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.w600),),
                  Text("Enter the 4- Digit code sent to you at\n                  +2348062589858",style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w400),),
                ],
              ),
            ),
           
           const SizedBox(height: 50,),
           Row(
             children: [
              const SizedBox(width: 30,),
               Text("Phone Number",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400),),
             ],
           ),
           const SizedBox(height: 20,),

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

                  const SizedBox(height: 20,),
                  MaterialButton(
                minWidth: 350,
                height: 44,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: const Color.fromRGBO(34, 34, 59, 1),
                onPressed: () {},
                child: Text(
                  " Verify",
                  style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 90,),
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