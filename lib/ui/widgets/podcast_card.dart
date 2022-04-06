import 'dart:math';

import 'package:flutter/material.dart';
import 'package:podeo_ui_clone/ui/screens/player_screen.dart';
import 'package:podeo_ui_clone/ui/theme/app_colors.dart';

class PodcastCard extends StatelessWidget {
  final bool? isExclusive;
  const PodcastCard({
    Key? key,
    this.isExclusive,
  }) : super(key: key);

  final List<String> albums = const [
    'assets/images/muse-1.jpg',
    'assets/images/muse-2.jpg',
    'assets/images/muse-3.jpeg',
    'assets/images/muse-4.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, PlayerScreen.id);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 170,
            width: 170,
            child: ClipRRect(
              borderRadius: (isExclusive == true)
                  ? const BorderRadius.only(topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0))
                  : BorderRadius.circular(8.0),
              child: Image.asset(
                albums[Random().nextInt(3) + 1],
                fit: BoxFit.fill,
              ),
            ),
          ),
          (isExclusive == true)
              ? Container(
                  height: 30,
                  width: 170,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8.0), bottomRight: Radius.circular(8.0)),
                    color: AppColors.secondaryColor,
                  ),
                  child: const Center(
                    child: Text(
                      'Exclusive',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
