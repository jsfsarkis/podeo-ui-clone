import 'package:flutter/material.dart';
import 'package:podeo_ui_clone/ui/theme/app_colors.dart';
import 'package:podeo_ui_clone/ui/widgets/colored_tile.dart';
import 'package:podeo_ui_clone/ui/widgets/search_bar.dart';

class SearchScreen extends StatelessWidget {
  static const String id = 'search_screen';
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildScreenHeader(context),
                  _buildSearchBar(context),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 12.0, right: 12.0),
              child: _buildColoredTiles(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScreenHeader(BuildContext context) {
    return const Text(
      'Search',
      style: TextStyle(
        color: Colors.white,
        fontSize: 45,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return const SearchBar();
  }

  Widget _buildColoredTiles(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ColoredTile(text: 'Podeo Exclusive'),
            SizedBox(width: 12),
            ColoredTile(text: 'Society & Culture'),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ColoredTile(text: 'Technology'),
            SizedBox(width: 12),
            ColoredTile(text: 'Medicine'),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ColoredTile(text: 'Science'),
            SizedBox(width: 12),
            ColoredTile(text: 'Health'),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ColoredTile(text: 'Business'),
            SizedBox(width: 12),
            ColoredTile(text: 'TV & Film'),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ColoredTile(text: 'Arts'),
            SizedBox(width: 12),
            ColoredTile(text: 'Religion & Spirituality'),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ColoredTile(text: 'News & Politics'),
            SizedBox(width: 12),
            ColoredTile(text: 'Literature'),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ColoredTile(text: 'Kids & Family'),
            SizedBox(width: 12),
            ColoredTile(text: 'History'),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ColoredTile(text: 'Government & Organizations'),
            SizedBox(width: 12),
            ColoredTile(text: 'Gaming & Hobbies'),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ColoredTile(text: 'Education'),
            SizedBox(width: 12),
            ColoredTile(text: 'Comedy'),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ColoredTile(text: 'Podeo Exclusive'),
            SizedBox(width: 12),
            ColoredTile(text: 'Society & Culture'),
          ],
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
