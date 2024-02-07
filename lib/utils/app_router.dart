import 'package:craft/ui/screens/SignUp.dart';
import 'package:craft/ui/screens/intro_screens/intro_page_5.dart';
import 'package:craft/ui/screens/intro_screens/intro_page_6.dart';
import 'package:craft/ui/screens/login.dart';
import 'package:craft/ui/screens/on_boarding.dart';
import 'package:craft/ui/screens/splash.dart';
import 'package:craft/ui/screens/verification_code_phone_mobile.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

GoRouter router(){
  return GoRouter(routes: [
    GoRoute(path: '/' ,  builder:((context , state)=>const SplashScreen()) ),
    GoRoute(path: '/login' ,  builder:((context , state)=>const LoginScreen()) ),

    GoRoute(path: '/signUp' ,  builder:((context , state)=> SignUp()) ),
    GoRoute(path: '/verifiycode' ,  builder:((context , state)=> const VerifiyCode()) ),
    GoRoute(path: '/onBoarding' ,  builder:((context , state)=>const OnBoarding()) ),
    GoRoute(path: '/introPage5' ,  builder:((context , state)=>const IntroPage5()) ),
    GoRoute(path: '/introPage6' ,  builder:((context , state)=>const IntroPage6()) ),

  ]);
}