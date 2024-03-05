import 'package:craft/controller/data_create_edit_delete_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

abstract class AuthContrroller {
  static loginAuth(
      {required String emailAddress,
      required String password,
      required BuildContext getcontext}) async {
    try {
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
          const SnackBar(
              content: Text("Wrong password provided for that user.")),
        );
      }
    }
  }

  static createAccountAuth({
    required String emailAddress,
    required String password,
    required type,
    required name,
    required phone,
    required gavern,
    required craft,
    required cost,
    required dircaction,
  }) async {
    try {
      final UserCredential credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailAddress, password: password);
      await DataController.authAddData(
          name: name,
          mail: emailAddress,
          type: type,
          phone: phone,
          gavern: gavern,
          craft: craft,
          cost: cost,
          dircaction: dircaction);
      print(credential);
      print("success");
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }
}
