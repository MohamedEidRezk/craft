
import 'package:craft/utils/material-theme/color_schemes.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 4), () {
      context.pushReplacement("/onBoarding");
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightGreen, Colors.greenAccent],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/img_logo.png',
              width: 150,
              height: 300,
            ),
             const Text(
              "Handicrafts",
              style: TextStyle(
                fontSize: 22 ,
                fontWeight: FontWeight.w700,
                color: Color(0xffFFFFFF),

              )

            ),
             const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                ),
                Text(
                  "Community",
                  style:
                  TextStyle(
                    
                     fontFamily: 'Pristina',
                    fontWeight: FontWeight.w400,
                    fontSize: 21,
                    color: Color(0xffFFFFFF)
                  )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
