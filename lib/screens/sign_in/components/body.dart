import 'package:fastshop/screens/sign_in/components/sign_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components_ui/colors_app.dart';
import '../../../components_ui/size_config.dart';
import '../../sign_up/sign_up.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 60,
        left: 10,
        right: 10,
      ),
      child: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Flashop',
                  style: TextStyle(
                      fontSize: getProportionateScreenHeight(58),
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor),
                ),
              ],
            ),
          ),
          const SignForm(),
          SizedBox(
            height: getProportionateScreenHeight(28),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              GestureDetector(
                child: const Text(
                  'Cadastre-se',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                      fontSize: 18),
                ),
                onTap: () {
                  Navigator.pushNamed(context, SignUp.routeName);
                },
              )
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(28),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [Text('Ou entre com sua rede favorita')],
          ),
          SizedBox(
            height: getProportionateScreenHeight(28),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 120.0, right: 110.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    child: SvgPicture.asset(
                  'assets/icons/google-icon.svg',
                  width: 28,
                )),
                GestureDetector(
                    child: SvgPicture.asset(
                  'assets/icons/apple-icon.svg',
                  width: 58,
                )),
                GestureDetector(
                    child: SvgPicture.asset(
                  'assets/icons/facebook-2.svg',
                  width: 18,
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
