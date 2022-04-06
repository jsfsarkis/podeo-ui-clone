import 'package:flutter/material.dart';
import 'package:podeo_ui_clone/ui/screens/tab_bar_screen.dart';
import 'package:podeo_ui_clone/ui/theme/app_colors.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 500), () {
      Navigator.pushNamedAndRemoveUntil(context, TabBarScreen.id, (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Image.asset('assets/images/podeo-icon.jpg'),
      ),
    );
  }
}
