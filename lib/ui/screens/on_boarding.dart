import 'package:craft/ui/screens/intro_screens/intro_page_1.dart';
import 'package:craft/ui/screens/intro_screens/intro_page_2.dart';
import 'package:craft/ui/screens/intro_screens/intro_page_3.dart';
import 'package:craft/ui/screens/intro_screens/intro_page_4.dart';
import 'package:craft/ui/widgets/custom_text_field.dart';
import 'package:craft/utils/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _controller=PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(backgroundColor: Colors.white,
      // elevation: 0),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
        child: Stack(
          children: [
            Center(
              child: PageView(controller: _controller,

                children: const [
                  IntroPage1(),
                  IntroPage2(),
                  IntroPage3(),
                  IntroPage4(),
                ],
              ),
            ),
            Container(alignment: Alignment.topRight,
              child: TextButton(onPressed: () {
                _controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.ease);
              },
                  child: const Text("Skip",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.grey),)),
            ),
            Container(
                alignment: const Alignment(0,0.6),
                child: SmoothPageIndicator(controller: _controller, count: 4,
                effect: const JumpingDotEffect(dotHeight: 4,dotWidth: 12.63,
                  radius: 56,

                  activeDotColor: Color(0xFF738961),dotColor: Color(0xFF7FB04F),
                ),)),
          ],
        ),
      ),
    );
  }
}
