import 'package:fastshop/screens/details/details_screen.dart';
import 'package:fastshop/screens/profile/profile_screen.dart';
import 'package:fastshop/screens/sign_in/sign_in.dart';
import 'package:fastshop/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import '../screens/cart/cart_screen.dart';
import '../screens/complete_profile/complete_profile_screen.dart';
import '../screens/forgot_password/forgot_password_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/login_success/login_success_screen.dart';
import '../screens/otp/otp_screen.dart';
import '../screens/sign_up/sign_up.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignScreen.routeName: (context) => const SignScreen(),
  SignUp.routeName: (context) => const SignUp(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
};
