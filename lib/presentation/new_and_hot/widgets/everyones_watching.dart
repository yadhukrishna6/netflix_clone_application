import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constance.dart';
import 'package:netflix_app/presentation/home/widgets/custom_button.dart';
import 'package:netflix_app/presentation/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        Text(
          " Friends ",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        Text(
          "This hit sitvom follows the merry misadventures of six 20_something pals as they navigate the pitfalls of work,life and love in 1990s manhattan.",
          style: TextStyle(
            color: kgreyColor,
          ),
        ),
        kheight50,
        VideoWidget(),
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomeWidget(
              icon: Icons.share,
              title: "share",
              iconSize: 25,
              textSize: 16,
            ),
            kwidth,
            CustomeWidget(
              icon: Icons.add,
              title: "My List",
              iconSize: 25,
              textSize: 16,
            ),
            kwidth,
            CustomeWidget(
                icon: Icons.play_arrow,
                title: "Play",
                iconSize: 27,
                textSize: 16),
            kwidth,
          ],
        )
      ],
    );
  }
}
