// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ewallet_app/features/home/screen/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:ewallet_app/common/utils/utils.dart';
import 'package:ewallet_app/features/auth/screens/login_screen.dart';
import 'package:ewallet_app/model/user_model.dart';

final authRepositoryProvider = Provider(
  (ref) => AuthRepository(
    auth: FirebaseAuth.instance,
    firestore: FirebaseFirestore.instance,
  ),
);

class AuthRepository {
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;

  AuthRepository({required this.auth, required this.firestore});

  void createUser(BuildContext context, String fullName, String email,
      String password, String phone) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      var user = UserModel(
          uid: auth.currentUser!.uid,
          fullName: fullName,
          email: email,
          phone: phone,
          password: password);
      firestore
          .collection('users')
          .doc(auth.currentUser!.uid)
          .set(user.toMap());
      // ignore: use_build_context_synchronously
      Navigator.pushNamed(context, LoginScreen.routeName);
    } on FirebaseAuthException catch (e) {
      showSnackBar(context: context, content: e.message!);
    }
  }

  void loginUser(BuildContext context, String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      // ignore: use_build_context_synchronously
      Navigator.pushNamedAndRemoveUntil(
          context, HomeScreen.routeName, (route) => false);
    } on FirebaseAuthException catch (e) {
      showSnackBar(context: context, content: e.message!);
    }
  }
}
