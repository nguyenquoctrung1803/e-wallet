// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:ewallet_app/features/wallets/repository/wallets_repository.dart';

final walletsControllerProvider = Provider(
  (ref) {
    final walletsRepository = ref.watch(walletsRepositoryProvider);
    return WalletsController(walletsRepository: walletsRepository, ref: ref);
  },
);

class WalletsController {
  final WalletsRepository walletsRepository;
  final ProviderRef ref;
  WalletsController({
    required this.walletsRepository,
    required this.ref,
  });

  void addWallets(BuildContext context, String cardNumber, String expiryDate,
      String cardHolderName, String cvvCode, bool isCvvFocused) {
    ref.watch(walletsRepositoryProvider).saveCreditCard(
        context, cardNumber, expiryDate, cardHolderName, cvvCode, isCvvFocused);
  }
}
