import 'dart:async';

import 'package:ewallet_app/features/auth/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../common/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(
          seconds: 5,
        ), () {
      Navigator.pushNamed(context, LoginScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.3,
            ),
            Image.asset(
              'assets/logo_ewallet.png',
              height: 96,
              width: 96,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'E-WALLET',
              style: GoogleFonts.nunito(
                textStyle: const TextStyle(
                  color: textColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              'A P L I C A T I O N',
              style: GoogleFonts.nunito(
                textStyle: const TextStyle(
                  color: Color(0xff3D6670),
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  wordSpacing: 2.7,
                ),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: LinearPercentIndicator(
                width: size.width * 0.75,
                animation: true,
                lineHeight: 6,
                animationDuration: 3000,
                percent: 1,
                progressColor: buttonColor,
                barRadius: const Radius.circular(15),
                backgroundColor: Colors.grey,
                curve: Curves.easeInCirc,
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Text(
              '2019. All rights reserved',
              style: TextStyle(color: textColor),
            )
          ],
        ),
      )),
    );
  }
}
