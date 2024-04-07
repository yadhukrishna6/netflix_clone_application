import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constance.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 200,
            ),
            Container(
              width: 150,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: kRadius10,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://image.tmdb.org/t/p/w220_and_h330_face/gPbM0MK8CP8A174rmUwGsADNYKD.jpg",
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 14,
          bottom: 0,
          child: BorderedText(
            strokeWidth: 10.0,
            strokeColor: kwhitecolor,
            child: Text(
              "${index + 1}",
              style: TextStyle(
                fontSize: 140,
                color: kBlackColor,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                decorationColor: Colors.black,
              ),
            ),
          ),
        )
      ],
    );
  }
}
