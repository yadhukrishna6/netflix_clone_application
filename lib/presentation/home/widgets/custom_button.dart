import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';

class CustomeWidget extends StatelessWidget {
  const CustomeWidget({
    super.key,
    required this.icon,
    required this.title,
    this.iconSize = 24,
    this.textSize = 18,
  });
  final IconData icon;
  final String title;
  final double iconSize;
  final double textSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kwhitecolor,
          size: iconSize,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: textSize,
          ),
        )
      ],
    );
  }
}
