import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:podeo_ui_clone/ui/screens/home_screen.dart';
import 'package:podeo_ui_clone/ui/screens/login_screen.dart';
import 'package:podeo_ui_clone/ui/screens/player_screen.dart';
import 'package:podeo_ui_clone/ui/screens/profile_screen.dart';
import 'package:podeo_ui_clone/ui/screens/search_screen.dart';
import 'package:podeo_ui_clone/ui/screens/sign_up_screen.dart';
import 'package:podeo_ui_clone/ui/screens/splash_screen.dart';
import 'package:podeo_ui_clone/ui/screens/tab_bar_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        TabBarScreen.id: (context) => const TabBarScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        SearchScreen.id: (context) => const SearchScreen(),
        ProfileScreen.id: (context) => const ProfileScreen(),
        PlayerScreen.id: (context) => const PlayerScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        SignUpScreen.id: (context) => const SignUpScreen(),
      },
    );
  }
}
