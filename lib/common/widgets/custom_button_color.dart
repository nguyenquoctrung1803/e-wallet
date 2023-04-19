import 'package:ewallet_app/common/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtonWithColor extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButtonWithColor(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        side: const BorderSide(
          style: BorderStyle.none,
        ),
        backgroundColor: buttonColor,
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}
