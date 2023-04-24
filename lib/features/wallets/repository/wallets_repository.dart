// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ewallet_app/common/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../../model/credit_card_model.dart';

final walletsRepositoryProvider = Provider(
  (ref) => WalletsRepository(
    auth: FirebaseAuth.instance,
    firestore: FirebaseFirestore.instance,
  ),
);

class WalletsRepository {
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;
  WalletsRepository({
    required this.auth,
    required this.firestore,
  });

  void saveCreditCard(
      BuildContext context,
      String cardNumber,
      String expiryDate,
      String cardHolderName,
      String cvvCode,
      bool isCvvFocused) async {
    try {
      var creditCardId = const Uuid().v1();
      var creditCard = CreditCardModels(
        creditCardId: creditCardId,
        cardNumber: cardNumber,
        expiryDate: expiryDate,
        cardHolderName: cardHolderName,
        cvvCode: cvvCode,
        isCvvFocused: isCvvFocused,
      );
      await firestore
          .collection('users')
          .doc(auth.currentUser!.uid)
          .collection('wallets')
          .doc(creditCardId)
          .set(
            creditCard.toMap(),
          );
    } catch (e) {
      showSnackBar(context: context, content: e.toString());
    }
  }

  Stream<List<CreditCardModels>> getCcCard() {
    return firestore
        .collection('users')
        .doc(auth.currentUser!.uid)
        .collection('wallets')
        .snapshots()
        .asyncMap((event) async {
      List<CreditCardModels> data = [];
      for (var document in event.docs) {
        data.add(CreditCardModels.fromMap(document.data()));
      }
      return data;
    });
  }
}
