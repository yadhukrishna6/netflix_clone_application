import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constance.dart';
import 'package:netflix_app/presentation/home/widgets/custom_button.dart';
import 'package:netflix_app/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "FEB",
                style: TextStyle(
                  fontSize: 17,
                  color: kgreyColor,
                ),
              ),
              Text(
                "11",
                style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 4,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoWidget(),
              Row(
                children: [
                  Text(
                    " WHAT IF 2",
                    style: TextStyle(
                      fontSize: 30,
                      letterSpacing: -4,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      CustomeWidget(
                        icon: Icons.notifications_active,
                        title: " Remind me",
                        iconSize: 18,
                        textSize: 12,
                      ),
                      kwidth,
                      CustomeWidget(
                        icon: Icons.info_outline_rounded,
                        title: "INFO",
                        iconSize: 18,
                        textSize: 12,
                      ),
                      kwidth,
                    ],
                  ),
                ],
              ),
              kheight,
              Text(" Coming on Friday"),
              kheight,
              Text(
                " WHAT IF 2",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kheight,
              Text(
                "A very straight forward episode of rushing things to set those pieces right into the puzzle. And my facial expressions were also pretty  storytelling, But only those children who are familiar with all the MCU till now might perhaps be able to enjoy it.",
                style: TextStyle(color: kgreyColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
