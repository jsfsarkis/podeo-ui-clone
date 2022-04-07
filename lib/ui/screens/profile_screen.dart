import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:podeo_ui_clone/ui/screens/login_screen.dart';
import 'package:podeo_ui_clone/ui/screens/sign_up_screen.dart';
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
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: TriangleClipper(),
                  child: Image.asset('assets/images/muse-3.jpeg').blurred(
                    blur: 0.5,
                    blurColor: Colors.transparent,
                  ),
                ),
                const Positioned(
                  top: 50,
                  left: 0,
                  right: 0,
                  child: Center(
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
                ),
                const Positioned(
                  top: 250,
                  left: 0,
                  right: 0,
                  child: Center(
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
                ),
                const Positioned(
                  top: 300,
                  left: 0,
                  right: 0,
                  child: Center(
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
                ),
              ],
            ),
            const SizedBox(height: 50),
            AuthButton(
              color: AppColors.accentColor,
              text: 'SIGN UP FREE',
              onTap: () {
                Navigator.pushNamed(context, SignUpScreen.id);
              },
            ),
            const SizedBox(height: 20),
            AuthButton(
              color: AppColors.secondaryColor,
              text: 'LOGIN',
              onTap: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            const SizedBox(height: 50),
            const SocialSignIn(),
          ],
        ),
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height - 70);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - 70);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}
