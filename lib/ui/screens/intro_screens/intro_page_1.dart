import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({super.key});

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SvgPicture.asset(
              "assets/images/onBoarding_P1.svg",
              width: 245,
              height: 360,
            ),
            const SizedBox(height: 45),
            const Center(
              child: Text(
                "Join Our Community of Handicrafts !",
                textAlign: TextAlign.center,
                style: TextStyle(

                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
