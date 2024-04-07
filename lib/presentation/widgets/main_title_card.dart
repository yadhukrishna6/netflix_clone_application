import 'package:flutter/material.dart';
import 'package:netflix_app/core/constance.dart';
import 'package:netflix_app/presentation/search/widget/search_result.dart';
import 'package:netflix_app/presentation/widgets/main_title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: title,
        ),
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => const MainCard(),
            ),
          ),
        ),
      ],
    );
  }
}
