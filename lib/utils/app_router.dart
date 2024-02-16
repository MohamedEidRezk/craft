import 'package:craft/ui/screens/candles_customer.dart';
import 'package:craft/ui/screens/customer-signup.dart';
import 'package:craft/ui/screens/customer_category.dart';
import 'package:craft/ui/screens/customer_home_page.dart';
import 'package:craft/ui/screens/delivery_signup.dart';
import 'package:craft/ui/screens/intro_screens/intro_page_5.dart';
import 'package:craft/ui/screens/intro_screens/intro_page_6.dart';
import 'package:craft/ui/screens/login.dart';
import 'package:craft/ui/screens/material_customer.dart';
import 'package:craft/ui/screens/on_boarding.dart';
import 'package:craft/ui/screens/product_details.dart';
import 'package:craft/ui/screens/product_details_complex.dart';
import 'package:craft/ui/screens/splash.dart';
import 'package:craft/ui/screens/verification_code_phone_mobile.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../ui/screens/crafter_signup.dart';
import '../ui/screens/intro_screens/intro_page_7.dart';

GoRouter router(){
  return GoRouter(routes: [
    GoRoute(path: '/' ,  builder:((context , state)=>const SplashScreen()) ),
    GoRoute(path: '/login' ,  builder:((context , state)=>const LoginScreen()) ),
    GoRoute(path: '/signUpDelivery' ,  builder:((context , state)=> SignUpDelivery()) ),
    GoRoute(path: '/signUpCrafter' ,  builder:((context , state)=> SignUpCrafter()) ),
    GoRoute(path: '/signUp' ,  builder:((context , state)=> SignUpCustomer()) ),
    GoRoute(path: '/verifiycode' ,  builder:((context , state)=> const VerifiyCode()) ),
    GoRoute(path: '/onBoarding' ,  builder:((context , state)=>const OnBoarding()) ),
    GoRoute(path: '/introPage5' ,  builder:((context , state)=>const IntroPage5()) ),
    GoRoute(path: '/introPage6' ,  builder:((context , state)=>const IntroPage6()) ),
    GoRoute(path: '/introPage7' ,  builder:((context , state)=>const IntroPage7()) ),
    GoRoute(path: '/customerCategory' ,  builder:((context , state)=>const CustomerCategory()) ),
    GoRoute(path: '/candleCategory' ,  builder:((context , state)=>const CandlesCustomer()) ),
    GoRoute(path: '/customerMaterial' ,  builder:((context , state)=>const CustomerMaterial()) ),
    GoRoute(path: '/productDetailsSimple' ,  builder:((context , state)=>const ProductDetailsSimple()) ),
    GoRoute(path: '/customerHomePage' ,  builder:((context , state)=>const CustomerHomePage()) ),
    GoRoute(path: '/productDetailsComplex' ,  builder:((context , state)=>const ProductDetailsComplex()) ),

  ]);
}