import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constance.dart';
import 'package:netflix_app/presentation/home/widgets/custom_button.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/coming_soon.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/everyones_watching.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widget.dart';
import 'package:netflix_app/presentation/widgets/video_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: Text(
              "New & Hot",
              style: TextStyle(
                color: kwhitecolor,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            actions: [
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
            bottom: TabBar(
              labelColor: kBlackColor,
              unselectedLabelColor: kwhitecolor,
              isScrollable: false,
              labelStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              indicator: BoxDecoration(
                color: kwhitecolor,
                borderRadius: kradius30,
              ),
              tabs: const [
                Tab(
                  text: '   🍿 Coming Soon      ',
                ),
                Tab(
                  text: "👀 Everyone's Watching   ",
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _buildComingSoon(),
            _buildEveryonesWatching(),
          ],
        ),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, index) => const ComingSoonWidget(),
    );
  }

  Widget _buildEveryonesWatching() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, index) =>
            const EveryonesWatchingWidget());
  }
}
