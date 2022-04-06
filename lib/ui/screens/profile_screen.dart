import 'package:flutter/material.dart';
import 'package:podeo_ui_clone/ui/theme/app_colors.dart';
import 'package:podeo_ui_clone/ui/widgets/auth_button.dart';
import 'package:podeo_ui_clone/ui/widgets/social_sign_in.dart';

class ProfileScreen extends StatelessWidget {
  static const String id = 'profile_screen';
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: const [
              Center(
                child: Text(
                  'Podeo',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 65),
              Center(
                child: Text(
                  'Unlimited Podcasts.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Free Forever.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 50),
              AuthButton(color: AppColors.accentColor, text: 'SIGN UP FREE'),
              SizedBox(height: 20),
              AuthButton(color: AppColors.secondaryColor, text: 'LOGIN'),
              SizedBox(height: 50),
              SocialSignIn(),
            ],
          ),
        ),
      ),
    );
  }
}
