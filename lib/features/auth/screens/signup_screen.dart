import 'package:ewallet_app/common/utils/utils.dart';
import 'package:ewallet_app/common/widgets/custom_button_color.dart';
import 'package:ewallet_app/features/auth/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/utils/colors.dart';
import '../../../common/widgets/custom_button.dart';
import '../controller/auth_controller.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  static const String routeName = '/signup-screen';
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  final gmailController = TextEditingController();
  final fullNameController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final repasswordController = TextEditingController();

  void signUpUser() {
    final fullName = fullNameController.text.trim();
    final email = gmailController.text.trim();
    final phone = phoneController.text.trim();
    final password = passwordController.text.trim();
    final repassword = repasswordController.text.trim();
    if (fullName.isNotEmpty &&
        email.isNotEmpty &&
        phone.isNotEmpty &&
        password == repassword) {
      ref
          .read(authControllerProvider)
          .signUpUser(context, fullName, email, password, phone);
    } else {
      showSnackBar(
          context: context,
          content: 'Please fill all the fields and correct repassword!');
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
                'SING UP',
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
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: TextField(
                        controller: fullNameController,
                        decoration: const InputDecoration(
                          filled: true,
                          prefixIcon: Icon(Icons.account_circle_outlined),
                          fillColor: backgroundColor,
                          hintText: 'Full name',
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        controller: phoneController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.phone_outlined),
                          filled: true,
                          fillColor: backgroundColor,
                          hintText: 'Phone',
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: TextField(
                        controller: gmailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined),
                          filled: true,
                          fillColor: backgroundColor,
                          hintText: 'E-mail',
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: TextFormField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline),
                          filled: true,
                          fillColor: backgroundColor,
                          hintText: 'Password',
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: TextFormField(
                        controller: repasswordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline),
                          filled: true,
                          fillColor: backgroundColor,
                          hintText: 'Re-Password',
                          contentPadding: EdgeInsets.all(10),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('or use an extraneous accounts'),
                  SizedBox(
                    height: size.height * 0.025,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 180,
                          decoration: BoxDecoration(
                            color: backgroundColor,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                FontAwesomeIcons.google,
                                color: Colors.grey,
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 20,
                                ),
                                child: const Text(
                                  'GOOGLE',
                                  style: TextStyle(
                                    color: buttonColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 180,
                          decoration: BoxDecoration(
                              color: backgroundColor,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Colors.grey,
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                FontAwesomeIcons.facebookF,
                                color: Colors.grey,
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 20,
                                ),
                                child: const Text(
                                  'FACEBOOK',
                                  style: TextStyle(
                                    color: buttonColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: 167,
                      height: 48,
                      child: CustomButton(
                        text: 'SING IN',
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            LoginScreen.routeName,
                          );
                        },
                      )),
                  SizedBox(
                    width: 167,
                    height: 48,
                    child: CustomButtonWithColor(
                      text: 'SING UP',
                      onPressed: signUpUser,
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
