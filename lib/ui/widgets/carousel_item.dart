import 'package:flutter/material.dart';
import 'package:podeo_ui_clone/ui/screens/player_screen.dart';

import '../theme/app_colors.dart';

class CarouselItem extends StatelessWidget {
  final String image;
  const CarouselItem({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300,
          width: 400,
          child: Image.asset(
            'assets/images/muse-$image.jpg',
            fit: BoxFit.fitHeight,
            width: double.infinity,
            // height: 100.h,
          ),
        ),
        const Text(
          'وهي رميم',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, PlayerScreen.id);
          },
          child: Container(
            margin: const EdgeInsets.only(left: 100, right: 100),
            padding: const EdgeInsets.only(left: 10, right: 40),
            decoration: BoxDecoration(
              color: AppColors.accentColor,
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.arrow_right_rounded, color: Colors.white, size: 50),
                Text(
                  'Listen',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
