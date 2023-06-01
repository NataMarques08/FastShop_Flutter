
import 'package:fastshop/screens/sign_up/components/sign_up_form.dart';
import 'package:flutter/material.dart';

import '../../../components_ui/colors_app.dart';
import '../../../components_ui/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

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
                         color: kPrimaryColor
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(58),),
              const SignUpForm(),

              SizedBox(height: getProportionateScreenHeight(58),),
            ],
          ),
    );
  }
}