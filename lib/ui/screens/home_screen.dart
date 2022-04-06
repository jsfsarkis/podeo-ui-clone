import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:podeo_ui_clone/ui/theme/app_colors.dart';
import 'package:podeo_ui_clone/ui/widgets/carousel_item.dart';
import 'package:podeo_ui_clone/ui/widgets/podcast_card.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Column(
            children: [
              _buildCarousel(context),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, bottom: 50.0, top: 50.0),
                child: Column(
                  children: [
                    _buildAlbumsRow(context, title: 'Podeo Exclusives', isExclusive: true),
                    const SizedBox(height: 55),
                    _buildAlbumsRow(context, title: 'Ramadan'),
                    const SizedBox(height: 55),
                    _buildAlbumsRow(context, title: 'Top', country: 'lb'),
                    const SizedBox(height: 55),
                    _buildAlbumsRow(context, title: 'Top', country: 'sa'),
                    const SizedBox(height: 55),
                    _buildAlbumsRow(context, title: 'Top', country: 'eg'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCarousel(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 405,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: false,
        reverse: false,
        autoPlay: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: false,
        scrollDirection: Axis.horizontal,
      ),
      items: const [
        CarouselItem(image: '1'),
        CarouselItem(image: '2'),
        CarouselItem(image: '1'),
        CarouselItem(image: '2'),
      ],
    );
  }

  Widget _buildAlbumsRow(BuildContext context, {required String title, String? country, bool? isExclusive}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            (country != null) ? const SizedBox(width: 8.0) : Container(),
            (country != null)
                ? Image.asset(
                    'icons/flags/png/$country.png',
                    package: 'country_icons',
                    height: 25,
                    width: 25,
                  )
                : Container(),
            const SizedBox(width: 5.0),
            const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 200,
          width: MediaQuery.of(context).size.width,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return PodcastCard(isExclusive: isExclusive);
            },
            separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 20.0),
            itemCount: 20,
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
          ),
        ),
      ],
    );
  }
}
