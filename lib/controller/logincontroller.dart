import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginContrroller {
  loginAuth({required String emailAddress, required String password ,required BuildContext getcontext}) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);
      print("success");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        ScaffoldMessenger.of(getcontext).showSnackBar(
          const SnackBar(content: Text("No user found for that email.")),
        );
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        ScaffoldMessenger.of(getcontext).showSnackBar(
          const SnackBar(content: Text("Wrong password provided for that user.")),
        );
      }
    }
  }
}
