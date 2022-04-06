import 'package:flutter/material.dart';

class SocialSignIn extends StatelessWidget {
  const SocialSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 10.0),
            Expanded(
              child: Container(
                height: 1,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 10.0),
            const Text(
              'or continue using',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: Container(
                height: 1,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 10.0),
          ],
        ),
        const SizedBox(height: 15.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(
              Icons.facebook,
              color: Colors.white,
              size: 50,
            ),
            Icon(
              Icons.apple,
              color: Colors.white,
              size: 50,
            ),
          ],
        ),
      ],
    );
  }
}
