import 'package:ewallet_app/common/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        side: const BorderSide(
          style: BorderStyle.none,
        ),
        backgroundColor: backgroundColor,
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: buttonColor,
          fontSize: 18,
        ),
      ),
    );
  }
}
