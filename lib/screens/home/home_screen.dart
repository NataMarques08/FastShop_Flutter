import 'package:flutter/material.dart';

import '../../components_ui/coustom_bottom_nav_bar.dart';
import '../../enums.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routeName = "/home_screen";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
