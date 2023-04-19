import 'package:ewallet_app/features/auth/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/utils/colors.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = '/signup-screen';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextEditingController gmailController = TextEditingController();
    final TextEditingController firstNameController = TextEditingController();
    final TextEditingController lastNameController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
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
                        keyboardType: TextInputType.emailAddress,
                        controller: firstNameController,
                        decoration: const InputDecoration(
                          filled: true,
                          prefixIcon: Icon(Icons.account_circle_outlined),
                          fillColor: backgroundColor,
                          hintText: 'First name',
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: TextField(
                        controller: lastNameController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline),
                          filled: true,
                          fillColor: backgroundColor,
                          hintText: 'Last name',
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: TextField(
                        controller: gmailController,
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
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        controller: phoneController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.phone_outlined),
                          filled: true,
                          fillColor: backgroundColor,
                          hintText: 'Phone',
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
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        side: const BorderSide(
                          style: BorderStyle.none,
                        ),
                        backgroundColor: backgroundColor,
                      ),
                      child: const Text(
                        'SING IN',
                        style: TextStyle(
                          color: buttonColor,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 167,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: buttonColor,
                      ),
                      child: const Text(
                        'SING UP',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
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
