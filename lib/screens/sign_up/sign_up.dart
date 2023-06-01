import 'package:fastshop/screens/sign_up/components/body.dart';
import 'package:flutter/material.dart';


class SignUp extends StatelessWidget {
  const SignUp({super.key});
  static String routeName = "/sign_up";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}