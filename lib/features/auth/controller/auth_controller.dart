// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../model/user_model.dart';
import '../repository/auth_repository.dart';

final authControllerProvider = Provider((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return AuthController(authRepository: authRepository, ref: ref);
});

final userDataAuthProvider = FutureProvider((ref) {
  final authController = ref.watch(authControllerProvider);
  return authController.getUserData();
});

class AuthController {
  final AuthRepository authRepository;
  final ProviderRef ref;
  AuthController({
    required this.authRepository,
    required this.ref,
  });

  void signUpUser(BuildContext context, String fullName, String email,
      String password, String phone) {
    authRepository.createUser(context, fullName, email, password, phone);
  }

  void signInUser(BuildContext context, String email, String password) {
    authRepository.loginUser(context, email, password);
  }

  Future<UserModel?> getUserData() async {
    UserModel? user = await authRepository.getCurrentDatauser();
    return user;
  }
}
