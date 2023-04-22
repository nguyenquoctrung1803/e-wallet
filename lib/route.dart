import 'package:ewallet_app/common/widgets/error_screen.dart';
import 'package:ewallet_app/features/auth/screens/login_screen.dart';
import 'package:ewallet_app/features/auth/screens/signup_screen.dart';
import 'package:ewallet_app/features/home/screen/home_screen.dart';
import 'package:ewallet_app/screen_layout.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case SignUpScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      );
    case HomeScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );
    case ScreenLayout.routeName:
      return MaterialPageRoute(
        builder: (context) => const ScreenLayout(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(error: 'This page does\'t exist'),
        ),
      );
  }
}
