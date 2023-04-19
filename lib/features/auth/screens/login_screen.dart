import 'package:ewallet_app/common/utils/utils.dart';
import 'package:ewallet_app/common/widgets/custom_button.dart';
import 'package:ewallet_app/common/widgets/custom_button_color.dart';
import 'package:ewallet_app/features/auth/controller/auth_controller.dart';
import 'package:ewallet_app/features/auth/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/utils/colors.dart';

class LoginScreen extends ConsumerStatefulWidget {
  static const String routeName = '/login-screen';
  const LoginScreen({super.key});
  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  TextEditingController gmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool check = false;
  void signIn() {
    final email = gmailController.text.trim();
    final password = passwordController.text.trim();
    if (email.isNotEmpty && password.isNotEmpty) {
      ref.read(authControllerProvider).signInUser(context, email, password);
    } else {
      showSnackBar(context: context, content: 'Please filled all the field!');
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              Image.asset(
                'assets/logo_ewallet.png',
                height: 96,
                width: 96,
              ),
              SizedBox(
                height: size.height * 0.004,
              ),
              Text(
                'SING IN',
                style: GoogleFonts.nunito(
                  textStyle: const TextStyle(
                    color: textColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Card(
                elevation: 3,
                margin: const EdgeInsets.all(14),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        controller: gmailController,
                        decoration: const InputDecoration(
                          filled: true,
                          prefixIcon: Icon(Icons.mail_outline),
                          fillColor: Colors.white,
                          hintText: 'E-mail',
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Password',
                          contentPadding: EdgeInsets.all(10),
                          border: InputBorder.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: buttonColor,
                          ),
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 11,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 18,
                    ),
                    child: RichText(
                      text: const TextSpan(
                        text: 'Enable',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' 2FA',
                            style: TextStyle(
                              color: buttonColor,
                            ),
                          ),
                          TextSpan(text: ' authentication'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.3,
                  ),
                  Switch(
                    value: check,
                    onChanged: (bool value) {
                      setState(
                        () {
                          check = value;
                        },
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: 167,
                      height: 48,
                      child: CustomButton(
                        text: 'SING UP',
                        onPressed: () {
                          Navigator.pushNamed(context, SignUpScreen.routeName);
                        },
                      )),
                  SizedBox(
                    width: 167,
                    height: 48,
                    child: CustomButtonWithColor(
                      text: 'SING IN',
                      onPressed: signIn,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
