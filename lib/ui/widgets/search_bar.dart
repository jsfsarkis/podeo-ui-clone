import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: const TextField(
        cursorColor: Colors.teal,
        style: TextStyle(
          fontSize: 17,
          color: Colors.grey,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search, color: Colors.white, size: 25),
          hintText: 'Episodes, podcasts and playlists',
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 17,
          ),
          isDense: false,
          contentPadding: EdgeInsets.all(20),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
