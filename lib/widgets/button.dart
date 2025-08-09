import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color textColor;
  final Color bgColor;
  final String text;

  const Button({
    super.key,
    required this.textColor,
    required this.bgColor,
    required this.text
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(40)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 50,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 22,
            fontWeight: FontWeight.w500
          ),
        ),
      ),
    );
  }
}