import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final Color color;
  final String text;
  const AuthButton({
    Key? key,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
