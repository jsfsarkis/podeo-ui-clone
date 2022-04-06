import 'package:flutter/material.dart';
import 'package:podeo_ui_clone/ui/screens/home_screen.dart';
import 'package:podeo_ui_clone/ui/screens/profile_screen.dart';
import 'package:podeo_ui_clone/ui/screens/search_screen.dart';

import '../theme/app_colors.dart';

class TabBarScreen extends StatefulWidget {
  static const String id = 'tab_bar_screen';
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> with TickerProviderStateMixin {
  int currentIndex = 0;

  final screens = const [
    HomeScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      bottomNavigationBar: _buildBottomNavBar(context),
      body: screens[currentIndex],
    );
  }

  Widget _buildBottomNavBar(BuildContext context) {
    return Container(
      height: 65,
      color: AppColors.secondaryColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              splashColor: Colors.transparent,
              onPressed: () {
                if (currentIndex == 0) {
                  return;
                } else {
                  currentIndex = 0;
                  setState(() {});
                }
              },
              icon: Icon(
                Icons.home_outlined,
                size: 45,
                color: (currentIndex == 0) ? AppColors.accentColor : Colors.white,
              ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              splashColor: Colors.transparent,
              onPressed: () {
                if (currentIndex == 1) {
                  return;
                } else {
                  currentIndex = 1;
                  setState(() {});
                }
              },
              icon: Icon(
                Icons.search_outlined,
                size: 45,
                color: (currentIndex == 1) ? AppColors.accentColor : Colors.white,
              ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              splashColor: Colors.transparent,
              onPressed: () {
                if (currentIndex == 2) {
                  return;
                } else {
                  currentIndex = 2;
                  setState(() {});
                }
              },
              icon: Icon(
                Icons.person_outlined,
                size: 45,
                color: (currentIndex == 2) ? AppColors.accentColor : Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
