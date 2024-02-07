import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({super.key});

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(height: 10,),
            SvgPicture.asset(
              "assets/images/onBoarding_P3.svg",
              width: 306,
              height: 369,
            ),
            const SizedBox(height: 45),
            const Center(
              child: Text(
                "Find The Perfect Handmade",

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
                "Gift For Your Self",

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
