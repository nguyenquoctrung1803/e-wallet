// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:ewallet_app/features/myprofile/repository/my_profile_repository.dart';

import '../../../model/user_model.dart';

final myProfileControllerProvider = Provider((ref) {
  final myProfileRepository = ref.watch(myProfileRepositoryProvider);
  return MyProfileController(
    myProfileRepository: myProfileRepository,
    ref: ref,
  );
});

final logoutUserControllerProvider = FutureProvider((ref) {
  final myProfileController = ref.watch(myProfileControllerProvider);
  return myProfileController.logout();
});

class MyProfileController {
  final MyProfileRepository myProfileRepository;
  final ProviderRef ref;
  MyProfileController({
    required this.myProfileRepository,
    required this.ref,
  });
  Stream<UserModel> getUserData() {
    return myProfileRepository.getDataUser();
  }

  Future<void> logout() {
    return myProfileRepository.logOut();
  }
}
