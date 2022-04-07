import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String hintText;
  final bool? isPassword;
  const AuthField({
    Key? key,
    required this.hintText,
    this.isPassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword ?? false,
      cursorColor: Colors.teal,
      style: const TextStyle(
        fontSize: 23,
        color: Colors.grey,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 23,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 0.5),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 2.0),
        ),
      ),
    );
  }
}
