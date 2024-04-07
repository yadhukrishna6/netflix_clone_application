import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constance.dart';
import 'package:netflix_app/presentation/search/widget/title.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w250_and_h141_face/tfw5LKySp7uEYJ3CUuD4TKx3s8y.jpg";

class SearchIdelWidget extends StatelessWidget {
  const SearchIdelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Top Search'),
        kheight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (ctx, index) => const TopSearchItemTile(),
              separatorBuilder: (ctx, index) => kheight20,
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(children: [
      Container(
        width: screenWidth * 0.35,
        height: 66,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imageUrl),
          ),
        ),
      ),
      const Expanded(
        child: Text(
          '  Movie Name',
          style: TextStyle(
            color: kwhitecolor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      const CircleAvatar(
        backgroundColor: kwhitecolor,
        radius: 23,
        child: CircleAvatar(
          backgroundColor: kBlackColor,
          radius: 20,
          child: Icon(
            CupertinoIcons.play_fill,
            color: kwhitecolor,
          ),
        ),
      )
    ]);
  }
}
