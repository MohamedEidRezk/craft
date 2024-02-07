import 'package:craft/ui/screens/intro_screens/intro_page_6.dart';
import 'package:craft/ui/widgets/custom_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class IntroPage5 extends StatefulWidget {
  const IntroPage5({super.key});

  @override
  State<IntroPage5> createState() => _IntroPage5State();
}

class _IntroPage5State extends State<IntroPage5> {
  bool customer = false;
  bool Crafter = false;
  bool Delivery = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              padding: const EdgeInsetsDirectional.only(start: 20),
              height: 242,
              width: 375,
              color: const Color(0xFF7FB04F),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome to our ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600)),
                  Text("Handicrafts Community!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600)),
                  SizedBox(height: 10),
                  Text("Please choose account type",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ],
              )),
          const SizedBox(
            height: 24,
          ),

          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    CustomCheckbox(
                      isChecked: customer,
                      onChanged: (value) {
                        setState(() {
                          customer = value;
                          context.pushReplacement('/introPage6');
                        });
                      },
                    ),
                    SizedBox(width: 10),
                    Text("Customer",
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(height: 22),


                Row(
                  children: [
                    CustomCheckbox(
                      isChecked: Crafter,
                      onChanged: (value) {
                        setState(() {
                          Crafter = value;
                          context.pushReplacement('/introPage6');
                        });
                      },
                    ),
                    SizedBox(width: 10),
                    Text("Crafter",
                        style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(height: 22),
                Row(
                  children: [
                    CustomCheckbox(
                      isChecked: Delivery,
                      onChanged: (value) {
                        setState(() {
                          Delivery = value;
                          context.pushReplacement('/introPage6');
                        });
                      },
                    ),
                    SizedBox(width: 10),
                    Text("Delivery",
                        style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
