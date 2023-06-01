import 'package:flutter/material.dart';

import '../../components_ui/size_config.dart';
import 'components/body.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}