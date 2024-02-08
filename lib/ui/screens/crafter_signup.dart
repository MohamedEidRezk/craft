import 'package:craft/ui/widgets/button.dart';
import 'package:craft/ui/widgets/custom_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../utils/responsive/responsive.dart';
import '../widgets/custom_text_field.dart';

class SignUpCrafter extends StatefulWidget {
  SignUpCrafter({super.key});

  @override
  State<SignUpCrafter> createState() => _SignUpCrafterState();
}

class _SignUpCrafterState extends State<SignUpCrafter> {
  bool isChecked=false;

  @override
  Widget build(BuildContext context) {
    bool value = false;
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        context.pushReplacement("/login");
                      },
                      child: const Icon(Icons.arrow_back_ios_new , color: Color(0xff000000),size: 16,),

                    ),
                    const SizeHorizontal(value: 20),
                    const Text(
                      'SignUp',
                      style: TextStyle(
                          fontSize: 16,
                          color:Color(0xff101623),fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const SizeVertical(value: 3),
                CustomTextFormField(
                  prefix: const Icon(
                    Icons.person,
                    color:Color(0xffA1A8B0),              ),
                  controller: TextEditingController(),
                  hintText: '  Enter your name ',
                  obscureText: false,
                  textInputType: TextInputType.name,
                ),
                const SizeVertical(value: 1.5),
                CustomTextFormField(
                  prefix: const Icon(
                    Icons.email,
                    color:Color(0xffA1A8B0),              ),
                  controller: TextEditingController(),
                  hintText: '  Enter your email ',
                  obscureText: false,
                  textInputType: TextInputType.emailAddress,
                ),

                const SizeVertical(value: 1.5),

                CustomTextFormField(

                  prefix: const Icon(
                    Icons.badge,
                    color:Color(0xffA1A8B0),),
                  suffix: const Icon(
                    Icons.arrow_drop_down,
                    color:Color(0xffA1A8B0),),

                    controller: TextEditingController(),
                  hintText: '  Enter your handicraft ',
                  obscureText: false,
                  textInputType: TextInputType.text,
                ),

                const SizeVertical(value: 1.5),

                SizedBox(
                  height: 70,
                  // Set the desired height here
                  child: Container(
                    height: 56,
                    width: 327,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: const Color(0xffE5E7EB),

                    ),


                    child: IntlPhoneField(

                      initialCountryCode: "EG",
                      cursorColor: const Color(0xffA1A8B0),
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        fillColor:  const Color(0xffE5E7EB),

                        hintText: "Enter your number",
                        hintStyle: const TextStyle(fontSize: 16 , fontWeight: FontWeight.w500 , color: Color(0xff101623)) ,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: const BorderSide(
                            color: Color(0xffE5E7EB),
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: const BorderSide(
                            color: Color(0xffE5E7EB),
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: const BorderSide(
                            color: Color(0xffE5E7EB),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizeVertical(value: 1.5),

                CustomTextFormField(
                  prefix: const Icon(
                    Icons.lock,
                    color:Color(0xffA1A8B0),              ),
                  suffix: const Icon(
                    Icons.visibility,
                    color:Color(0xffA1A8B0),              ),
                  controller: TextEditingController(),
                  hintText: '  Enter Your Password ',
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                ),
                const SizeVertical(value: 1.5),
                Row(
                  children: [
                    CustomCheckbox(isChecked: isChecked, onChanged: (value) {
                      setState(() {
                        isChecked=value;
                      });
                    },borderColor: const Color(0xFFD3D6DA)),
                    const SizedBox(width: 7),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "I agree to the Handicrafts ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "Terms of Service",
                              style: TextStyle(
                                color: Color(0xFF7FB04F),
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "and",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              " Privacy Policy",
                              style: TextStyle(
                                color: Color(0xFF7FB04F),
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizeVertical(value: 2.5),
                CustomButton(
                  text: "Sign Up",
                  onPressed: () {
                    context.pushReplacement('/verifiycode');
                  },
                  width: 327,
                  height: 56,

                ),
                const SizeVertical(value: 2.5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account ?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        context.pushReplacement("/login");
                      },
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                          color: Color(0xFF7FB04F),
                          fontSize: 14,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

/*
                  title: Column(
                    children: [
                      Row(
                        children: [
                          const Text("I agree to the Handicrafts " , style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),),
                          Text("Terms of Service", style: TextStyle(
                            color: lightColorScheme.surfaceTint,
                            fontSize: 10,
                          ),)
                        ],
                      ),
                      Row(
                        children: [
                          const Text("and" , style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),),
                          Text("Privacy Policy", style: TextStyle(
                            color: lightColorScheme.surfaceTint,
                            fontSize: 10,
                          ),)
                        ],
                      ),
                    ],
                  ),

 */
