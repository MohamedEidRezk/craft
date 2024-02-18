import 'package:craft/ui/widgets/button.dart';
import 'package:craft/utils/responsive/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/material-theme/color_schemes.g.dart';

class VerifiyCode extends StatefulWidget {
  const VerifiyCode({super.key});

  @override
  State<VerifiyCode> createState() => _VerifiyCodeState();
}

class _VerifiyCodeState extends State<VerifiyCode> {
  bool _onEditing = true;
  String? _code;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: () {
                        context.pushReplacement("/signUp");
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Color(0xff000000),
                        size: 16,
                      )),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Enter Verification Code ",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff101623)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Please enter code that we have sent  ",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF717784),
                    ),
                  ),
                  Text(
                    "to the phone number 011458*****  ",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF717784),
                    ),
                  ),
                ],
              ),
              const SizeVertical(value: 2.5),
              VerificationCode(
                keyboardType: TextInputType.number,
                underlineColor: lightColorScheme.primary,
                cursorColor: lightColorScheme.primary,
                fullBorder: true,
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                onCompleted: (String value) {
                  setState(() {
                    _code = value;
                  });
                },
                onEditing: (bool value) {
                  setState(() {
                    _onEditing = value;
                  });
                  if (!_onEditing) FocusScope.of(context).unfocus();
                },
              ),
              const SizeVertical(value: 2.5),
              CustomButton(
                text: 'Verify',
                width: 327,
                height: 56,
                onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => Container(
                    width:401 ,
                    height:327 ,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AlertDialog(
                          title: Container(
                              width: 60,
                              height: 60,
                              decoration: const BoxDecoration(
                                  color: Color(0xffFAF8ED),
                                  shape: BoxShape.circle),
                              child: Image.asset(
                                  "assets/images/img_icoutlinecheck.png")),
                          content: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Success",
                                style: TextStyle(
                                    fontSize: 20 , fontWeight: FontWeight.w700 ,
                                    color:Color(0xff101623) ),),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "your Account has been",
                                style: TextStyle(
                                  fontSize: 16 , color: Color(0xffA1A8B0),
                                  fontWeight: FontWeight.w400,

                                ),
                              ),
                              const Text(
                                "Successfully registered",
                                style: TextStyle(
                                  fontSize: 16 , color: Color(0xffA1A8B0),
                                  fontWeight: FontWeight.w400,

                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              CustomButton(text: ("Go to home"), onPressed: (){
                                context.pushReplacement("/customerHomePage");
                              } , width: 183 , height:56 ,),

                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizeVertical(value: 2.5),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn't receive the code?",
                    style: TextStyle(
                      color: Color(0xFF717784),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Resend",
                    style: TextStyle(
                      color: Color(0xFF7FB04F),
                      fontSize: 14,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
