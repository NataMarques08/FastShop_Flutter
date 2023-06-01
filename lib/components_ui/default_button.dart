// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fastshop/components_ui/size_config.dart';

import 'colors_app.dart';

// ignore: must_be_immutable
class DefaultButton extends StatelessWidget {

  const DefaultButton({
    Key? key,
    required this.texto,
    this.press,
  }) : super(key: key);

  final String texto;
  final Function? press;
 


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child:  ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryColor,
            
          ),
          onPressed: press as void Function()?, 
          child: Text(
            texto,
            style: TextStyle(
              fontSize: getProportionateScreenHeight(20),
            
              ),
          ),
          ),
    );
  }
}
