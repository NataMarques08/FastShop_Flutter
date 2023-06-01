import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../components_ui/colors_app.dart';
import '../../../components_ui/default_button.dart';
import '../../../components_ui/size_config.dart';
import '../../../firebase_config/firebase_auth_config.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  FirebaseAuthConfig auth = FirebaseAuthConfig();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: getProportionateScreenHeight(78),
        ),
        buildFormEmail(),
        SizedBox(
          height: getProportionateScreenHeight(18),
        ),
        buildFormPassword(),
        SizedBox(
          height: getProportionateScreenHeight(58),
        ),
        DefaultButton(
            texto: 'ENTRAR',
            press: () {
              auth.signInUseEmailAndPassword(
                  context: context, email: email.text, password: password.text);
            }),
      ],
    );
  }

  Padding buildFormEmail() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: const InputDecoration(
          labelText: 'Email',
          hintText: 'Entre com o seu email',
          labelStyle: TextStyle(color: kPrimaryColor),
          border: OutlineInputBorder(),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: kPrimaryColor)),
        ),
        keyboardType: TextInputType.emailAddress,
        controller: email,
      ),
    );
  }

  Padding buildFormPassword() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: const InputDecoration(
          labelText: 'Senha',
          hintText: 'Entre com sua senha',
          labelStyle: TextStyle(color: kPrimaryColor),
          border: OutlineInputBorder(),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: kPrimaryColor)),
        ),
        keyboardType: TextInputType.text,
        obscureText: true,
        controller: password,
      ),
    );
  }
}
