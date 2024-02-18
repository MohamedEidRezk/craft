import 'package:craft/ui/widgets/Custom_Button.dart';
import 'package:craft/ui/widgets/button.dart';

import 'package:craft/ui/widgets/custom_text_field.dart';
import 'package:craft/utils/material-theme/color_schemes.g.dart';
import 'package:craft/utils/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
class LoginScreen  extends StatelessWidget {
  const LoginScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
    leading: IconButton(
    icon: const Icon(Icons.arrow_back_ios, color: Colors.black, ), onPressed: () {
    context.pushReplacement("/signUp");
    },
    ),
    backgroundColor: Colors.white,
    title: const Text(
    "Login",
    style: TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    ),
    ),
    centerTitle: true,
    elevation: 0,
    ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              CustomTextFormField(
              prefixIcon:const Icon(Icons.email , color:Color((0xffA1A8B0)),) ,
                controller: TextEditingController(), hintText: '  Enter Your Email ' , obscureText: false,
              textInputType: TextInputType.emailAddress,
            ),
          const SizeVertical(value: 1),

          CustomTextFormField(
            prefixIcon:const Icon(Icons.lock , color:Color(0xffA1A8B0),) ,
            suffixIcon: const Icon(Icons.visibility , color:Color(0xffA1A8B0),) ,
                  controller: TextEditingController(), hintText: '  Enter Your Password ', obscureText: true,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
          ),
              const SizeVertical(value: 1),
              const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Forgot Password?" , style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  color: Color(0xFF7FB04F),
                    ),),

              ],
            ),
              const SizeVertical(value: 1),
              CustomButton(text:'Login', width: 327 , height: 56 ,
                onPressed: ()=>showDialog(context: context,

                  builder: (BuildContext context)=>Container(
                    width: 327,
                    height: 401,
                    child: Column(

                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AlertDialog(

                          title: Container(
                            width: 60,
                              height: 60,
                              decoration: const BoxDecoration(
                                color: Color(0xFFFAF8ED),
                                shape: BoxShape.circle
                              ),
                              child: Image.asset("assets/images/img_icoutlinecheck.png")),
                        content: Column(
                          children: [
                            const SizedBox(height: 10,),
                            const Text("Welcome Back" , style: TextStyle(
                                fontSize: 20 , fontWeight: FontWeight.w700 ,
                                color:Color(0xff101623) ),),
                            const SizedBox(height: 10,),

                            const Text("you login successfully" , style: TextStyle(
                              fontSize: 16 , color: Color(0xffA1A8B0),
                              fontWeight: FontWeight.w400,
                            ),),
                            const Text("into Handicrafts app" , style: TextStyle(
                              fontSize: 16 , color: Color(0xffA1A8B0),
                              fontWeight: FontWeight.w400,

                            ),),
                            const SizedBox(height: 10,),

                            CustomButton(text: ("Go to home"), onPressed: (){
                              context.pushReplacement("/landing");
                            } , width: 183 , height:56 ,),
                            const SizedBox(height: 10,),

                          ],
                        ),

                        ),
                      ],
                    ),
                  ),

              ) ,),
              const SizeVertical(value: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an Account ?  " , style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    color: Color(0xFF717784),
                  ),),
                  InkWell(
                    onTap: (){
                  context.pushReplacement('/signUp');
                    },
                    child: const Text("SignUp",style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      color: Color(0xFF7FB04F),),),
                  ),
                ],
              ),
              const SizeVertical(value: 1),
              const Row(
                  children: <Widget>[
                    Expanded(
                        child: Divider()
                    ),

                    Text("  OR  ",style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xFF717784),
                    ),),

                    Expanded(
                        child: Divider()
                    ),
                  ]
              ),
              const SizeVertical(value: 0.25),

              CustomButtonOutlined(label: "Sign in with Google " , leftIcon: SvgPicture.asset('assets/images/img_google.svg'),),

              const SizeVertical(value: 0.25),

               CustomButtonOutlined(label: " Sign in with Facebook " , leftIcon: SvgPicture.asset('assets/images/img_facebook.svg'),),
              const SizeVertical(value: 0.25),

              CustomButtonOutlined(
                label:  "Sign in with Apple",
                leftIcon: SvgPicture.asset("assets/images/img_user.svg"),),
            ],
          ),
        ),
      ),
    );
  }
}
