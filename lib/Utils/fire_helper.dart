import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class FireHelper {
  static FireHelper fireHelper = FireHelper._();

  FireHelper._();

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  void SingUp({required email, required password}) {
    firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) => print("Success"))
        .catchError((e) => print("Failed $e"));
  }
}
