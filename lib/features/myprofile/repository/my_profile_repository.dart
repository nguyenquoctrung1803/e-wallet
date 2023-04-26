// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ewallet_app/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final myProfileRepositoryProvider = Provider(
  (ref) => MyProfileRepository(
    auth: FirebaseAuth.instance,
    firestore: FirebaseFirestore.instance,
  ),
);

class MyProfileRepository {
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;
  MyProfileRepository({
    required this.auth,
    required this.firestore,
  });

  Stream<UserModel> getDataUser() {
    var userData = firestore
        .collection('users')
        .doc(auth.currentUser!.uid)
        .snapshots()
        .asyncMap(
          (event) => UserModel.fromMap(
            event.data()!,
          ),
        );
    return userData;
  }

  void logOut() {
    // add something to set user == null

    FirebaseAuth.instance.signOut();
  }
}
