import 'package:flutter/material.dart';
import 'package:podeo_ui_clone/ui/screens/home_screen.dart';
import 'package:podeo_ui_clone/ui/screens/profile_screen.dart';
import 'package:podeo_ui_clone/ui/screens/search_screen.dart';
import 'package:podeo_ui_clone/ui/screens/splash_screen.dart';
import 'package:podeo_ui_clone/ui/screens/tab_bar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        TabBarScreen.id: (context) => const TabBarScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
SearchScreen.id: (context) => const SearchScreen(),
        ProfileScreen.id: (context) => const ProfileScreen(),

      },
    );
  }
}
