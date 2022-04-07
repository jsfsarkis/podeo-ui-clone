import 'package:flutter/material.dart';
import 'package:podeo_ui_clone/ui/screens/login_screen.dart';
import 'package:podeo_ui_clone/ui/theme/app_colors.dart';
import 'package:podeo_ui_clone/ui/widgets/auth_button.dart';
import 'package:podeo_ui_clone/ui/widgets/auth_field.dart';

class SignUpScreen extends StatelessWidget {
  static const String id = 'sign_up_screen';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 35, right: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text(
                    'Create an account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 100),
                  const AuthField(hintText: 'What\'s your email?'),
                  const SizedBox(height: 25),
                  const AuthField(hintText: 'Create Password', isPassword: true),
                  const SizedBox(height: 50),
                  AuthButton(color: AppColors.secondaryColor, text: 'Next', onTap: () {})
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
              child: const Text(
                'Already a member? Login.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
