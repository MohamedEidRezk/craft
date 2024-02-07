import 'package:craft/ui/widgets/button.dart';
import 'package:craft/ui/widgets/custom_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../utils/material-theme/color_schemes.g.dart';
import '../../utils/responsive/responsive.dart';
import '../widgets/custom_text_field.dart';

class SignUp extends StatefulWidget {
   SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: lightColorScheme.shadow,
                    size: 25,
                  ),
                ),
                const SizeHorizontal(value: 20),
                Text(
                  'SignUp',
                  style: TextStyle(
                      fontSize: 20,
                      color: lightColorScheme.shadow,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizeVertical(value: 3),
            CustomTextFormField(
              prefix: const Icon(
                Icons.person,
                color: Colors.blueGrey,
              ),
              controller: TextEditingController(),
              hintText: '  Enter your name ',
              obscureText: false,
              textInputType: TextInputType.name,
            ),
            const SizeVertical(value: 1.5),
            CustomTextFormField(
              prefix: const Icon(
                Icons.email,
                color: Colors.blueGrey,
              ),
              controller: TextEditingController(),
              hintText: '  Enter your email ',
              obscureText: false,
              textInputType: TextInputType.emailAddress,
            ),
            const SizeVertical(value: 1.5),
            SizedBox(
              height: 70, // Set the desired height here
              child: IntlPhoneField(
                initialCountryCode: "EG",
                cursorColor: Colors.blueGrey,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Enter your number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: BorderSide(
                      color: lightColorScheme.onErrorContainer,
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: BorderSide(
                      color: lightColorScheme.onErrorContainer,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: BorderSide(
                      color: lightColorScheme.onErrorContainer,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),

            CustomTextFormField(
              prefix: const Icon(
                Icons.lock,
                color: Colors.blueGrey,
              ),
              suffix: const Icon(
                Icons.visibility,
                color: Colors.blueGrey,
              ),
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
                },borderColor: Color(0xFFD3D6DA)),
                 SizedBox(width: 7),
                 Column(
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
