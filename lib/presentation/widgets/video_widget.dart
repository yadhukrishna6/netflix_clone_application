import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constance.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            newAndHotTempImage,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black.withOpacity(0.7),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_off,
                color: kwhitecolor,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
