import 'package:fastshop/screens/home/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseAuthConfig {
  static SnackBar customSnackBar({required String content}) {
    return SnackBar(
      backgroundColor: Colors.black,
      content: Text(
        content,
        style: TextStyle(color: Colors.redAccent, letterSpacing: 0.5),
      ),
    );
  }

  void addUser(String email, String password) {
    FirebaseAuth auth = FirebaseAuth.instance;
    auth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((FirebaseUser) {
      print('Usuário salvo com sucesso!');
      print('Email: ${FirebaseUser.user}');
    }).catchError((error) {
      print('$error');
    });
  }

  Future<User?> signInUseEmailAndPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
      ScaffoldMessenger.of(context)
          .showSnackBar(FirebaseAuthConfig.customSnackBar(
        content: 'Everything is right',
      ));
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        ScaffoldMessenger.of(context).showSnackBar(
          FirebaseAuthConfig.customSnackBar(
            content: 'No user found for that email. Please create an account.',
          ),
        );
      } else if (e.code == 'wrond-password') {
        print('Wrong password provided');
        ScaffoldMessenger.of(context).showSnackBar(
            FirebaseAuthConfig.customSnackBar(content: 'Wrong password'));
      }
    }
    return user;
  }
}
