import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constance.dart';
import 'package:netflix_app/presentation/home/widgets/custom_button.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(kmainimage),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomeWidget(
                  title: "My List",
                  icon: Icons.add,
                ),
                _playButton(),
                const CustomeWidget(
                  icon: Icons.info,
                  title: "Info",
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  TextButton _playButton() {
    return TextButton.icon(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kwhitecolor),
      ),
      icon: Icon(
        Icons.play_arrow_sharp,
        size: 28,
        color: kBlackColor,
      ),
      label: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: Text(
          "play",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: kBlackColor),
        ),
      ),
    );
  }
}
