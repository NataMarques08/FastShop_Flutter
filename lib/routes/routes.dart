import 'package:fastshop/screens/sign_in/sign_in.dart';
import 'package:fastshop/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

import '../screens/home/home_screen.dart';
import '../screens/sign_up/sign_up.dart';

final Map<String,WidgetBuilder> routes ={
  SplashScreen.routeName:(context) =>  const SplashScreen(),
  SignScreen.routeName:(context) => const SignScreen(),
  SignUp.routeName:(context) => const SignUp(),
  HomeScreen.routeName:(context) => const HomeScreen(),
};