import 'package:flutter/material.dart';
import 'components/body.dart';


class SignScreen extends StatelessWidget {
  const SignScreen({super.key});
  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
 
    return const Scaffold(
      body: Body(),
    );
  }
}