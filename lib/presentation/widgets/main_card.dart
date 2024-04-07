import 'package:flutter/material.dart';
import 'package:netflix_app/core/constance.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      width: 150,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: kRadius10,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            "https://www.themoviedb.org/t/p/w500/kfloVZk0uGkSftjD6DI8ZWUsrrI.jpg",
          ),
        ),
      ),
    );
  }
}
