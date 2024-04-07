import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constance.dart';
import 'package:netflix_app/presentation/home/widgets/background_card.dart';
import 'package:netflix_app/presentation/home/widgets/custom_button.dart';
import 'package:netflix_app/presentation/home/widgets/number_title_card.dart';
import 'package:netflix_app/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (BuildContext context, index, _) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (Notification) {
            final ScrollDirection direction = Notification.direction;
            print(direction);
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                children: const [
                  BackgroundCard(),
                  MainTitleCard(
                    title: "Released in past year",
                  ),
                  kheight,
                  MainTitleCard(
                    title: "Trending Now",
                  ),
                  kheight,
                  NumberTitleCard(),
                  MainTitleCard(
                    title: "Tense Dramas",
                  ),
                  kheight,
                  MainTitleCard(
                    title: "South India  Cinema",
                  ),
                  kheight,
                ],
              ),
              scrollNotifier.value == true
                  ? AnimatedContainer(
                      duration: Duration(milliseconds: 1000),
                      width: double.infinity,
                      height: 80,
                      color: Colors.black.withOpacity(0.2),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                "https://www.freepnglogos.com/uploads/netflix-logo-app-png-16.png",
                                width: 60,
                                height: 60,
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.cast,
                                color: Colors.white,
                                size: 30,
                              ),
                              kwidth,
                              Container(
                                width: 30,
                                height: 30,
                                color: Colors.blue,
                              ),
                              kwidth,
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "TV Shows",
                                style: kHomeTitleText,
                              ),
                              Text(
                                "Movies",
                                style: kHomeTitleText,
                              ),
                              Text(
                                "Categories",
                                style: kHomeTitleText,
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  : kheight,
            ],
          ),
        );
      },
    ));
  }
}
