import 'package:fastshop/components_ui/default_button.dart';
import 'package:fastshop/firebase_config/firestore_config.dart';
import 'package:flutter/material.dart';

import '../../../components_ui/colors_app.dart';
import '../../../components_ui/size_config.dart';
import '../../../firebase_config/firebase_auth_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  FireStoreConfig runDb = FireStoreConfig();
  FirebaseAuthConfig auth = FirebaseAuthConfig();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildFormName(),
        buildFormEmail(),
        buildFormPassword(),
        SizedBox(height: getProportionateScreenHeight(28)),
        DefaultButton(
          texto: 'CADASTRAR',
          press: () {
            runDb.saveUser(name.text, email.text, password.text);
            auth.addUser(email.text, password.text);
          },
        ),
      ],
    );
  }

  Padding buildFormName() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: const InputDecoration(
          labelText: 'Seu nome',
          hintText: 'Digite seu nome',
          labelStyle: TextStyle(color: kPrimaryColor),
          border: OutlineInputBorder(),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: kPrimaryColor)),
        ),
        keyboardType: TextInputType.text,
        controller: name,
      ),
    );
  }

  Padding buildFormEmail() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: const InputDecoration(
          labelText: 'Email',
          hintText: 'Digite seu email',
          labelStyle: TextStyle(color: kPrimaryColor),
          border: OutlineInputBorder(),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: kPrimaryColor)),
        ),
        keyboardType: TextInputType.text,
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
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kPrimaryColor)),
          ),
          keyboardType: TextInputType.text,
          obscureText: true,
          controller: password),
    );
  }
}
