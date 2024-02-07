import 'package:craft/ui/screens/intro_screens/intro_page_5.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class IntroPage4 extends StatefulWidget {
  const IntroPage4({super.key});

  @override
  State<IntroPage4> createState() => _IntroPage4State();
}

class _IntroPage4State extends State<IntroPage4> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton:  Padding(
          padding: const EdgeInsets.only(left:27 ),
          child: Container(
            // alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
                color: Color(0xFF7FB04F),
                borderRadius: BorderRadiusDirectional.circular(32)),
            width: 327,
            height: 46,

            child: MaterialButton(
              onPressed: () {
             context.pushReplacement('/introPage5');
              },
              child: Text("Get Started",
                  style: TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.w600)),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SvgPicture.asset(
              "assets/images/onBoarding_P4.svg",
              width: 245,
              height: 360,
            ),
            const SizedBox(height: 45),
            // Center(
            //   child: Text(
            //     "",
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //
            //       color: Colors.black,
            //       fontSize: 22,
            //       fontWeight: FontWeight.w600,
            //     ),
            //   ),
            // ),

            const Center(
              child: Text(
                "Product Delivery",
                textAlign: TextAlign.center,
                style: TextStyle(

                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Center(
              child: Text(
                "",
                textAlign: TextAlign.center,
                style: TextStyle(

                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),




          ],
        ),
      ),
    );
  }
}
