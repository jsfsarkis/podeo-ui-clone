import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podeo_ui_clone/ui/theme/app_colors.dart';

class PlayerScreen extends StatefulWidget {
  static const String id = 'player_screen';
  const PlayerScreen({Key? key}) : super(key: key);

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  bool isPaused = false;
  double sliderValue = 0.0;
  Duration duration = const Duration(seconds: 845);

  String calculateCurrentTime() {
    double progress = 100 - sliderValue;
    double playedSeconds = (duration.inSeconds.toDouble() - ((duration.inSeconds.toDouble() * progress) / 100));
    String formattedPlayedSeconds = Duration(seconds: playedSeconds.toInt()).format();
    setState(() {});
    return formattedPlayedSeconds;
  }

  double calculateFifteenSeconds() {
    return 15 / duration.inSeconds.toDouble() * 100;
  }

  void playMusic() {
    while (isPaused) {
      Future.delayed(const Duration(seconds: 1), () {
        sliderValue += 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  backgroundColor: AppColors.primaryColor,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          leading: const Icon(
                            Icons.favorite_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          title: const Text(
                            'Like',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        const Divider(color: Colors.grey, thickness: 0.5, height: 1),
                        ListTile(
                          leading: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 30,
                          ),
                          title: const Text(
                            'Follow',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        Divider(color: Colors.grey, thickness: 0.5, height: 1),
                        ListTile(
                          leading: const Icon(
                            Icons.download,
                            color: Colors.white,
                            size: 30,
                          ),
                          title: const Text(
                            'Download',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        Divider(color: Colors.grey, thickness: 0.5, height: 1),
                        ListTile(
                          leading: const Icon(
                            Icons.share,
                            color: Colors.white,
                            size: 30,
                          ),
                          title: const Text(
                            'Share',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                  });
            },
            icon: const Icon(
              Icons.more_horiz,
              size: 35,
              color: Colors.white,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildImage(context),
            _buildSlider(context),
            _buildControls(context),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 300,
            width: 400,
            child: Image.asset(
              'assets/images/muse-4.webp',
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
        ],
      ),
    );
  }

  Widget _buildSlider(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Column(
        children: [
          Slider(
            activeColor: AppColors.accentColor,
            inactiveColor: AppColors.secondaryColor,
            min: 0,
            max: 100,
            value: sliderValue,
            onChanged: (value) {
              setState(() {
                sliderValue = value;
              });
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                calculateCurrentTime(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                duration.format(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildControls(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            sliderValue -= calculateFifteenSeconds();
            setState(() {});
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 40,
          ),
        ),
        GestureDetector(
          onTap: () {
            isPaused = !isPaused;
            setState(() {});
            // playMusic();
          },
          child: Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: AppColors.accentColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Icon(
              (isPaused == false) ? Icons.pause : Icons.play_arrow_rounded,
              color: Colors.white,
              size: 65,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            sliderValue += calculateFifteenSeconds();
            setState(() {});
          },
          child: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 40,
          ),
        )
      ],
    );
  }
}

extension on Duration {
  String format() => '$this'.split('.')[0].padLeft(8, '0');
}
