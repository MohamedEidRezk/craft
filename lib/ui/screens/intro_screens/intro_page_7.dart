import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class IntroPage7 extends StatefulWidget {
  const IntroPage7({super.key});

  @override
  State<IntroPage7> createState() => _IntroPage7State();
}

class _IntroPage7State extends State<IntroPage7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform.rotate(
              angle: 6 * 3.14159265359 / 180,
              child: Image.asset(
                "assets/images/img_logo.png",
                width: 102.84,
                height: 157.36,
              )),
          const SizedBox(
            height: 10,
          ),
          const Center(
              child: Text(
            "Let’s get started!",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black),
          )),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Login to enjoy the features we’ve ",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xFF717784)),
          ),
          const Text(
            "provided",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xFF717784)),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            // alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
                color: const Color(0xFF7FB04F),
                borderRadius: BorderRadiusDirectional.circular(32)),
            width: 263,
            height: 56,

            child: MaterialButton(
              onPressed: () {
                context.pushReplacement('/login');
              },
              child: const Text("Login",
                  style: TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.w600)),
            ),
          ),
          const SizedBox(height: 15,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
              border: Border.all(color: const Color(0xFF7FB04F), width: 2),
            ),
            width: 263,
            height: 56,
            child: MaterialButton(
              onPressed: () {
                context.pushReplacement('/signUp');
              },
              child: const Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF7FB04F),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
