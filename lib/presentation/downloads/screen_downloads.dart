import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/downloads/downloads_bloc.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constance.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});
  final _widgetList = [
    const _smartDownloads(),
    Section2(),
    const Section3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: 'Downloads',
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemCount: _widgetList.length,
        itemBuilder: (ctx, index) => _widgetList[index],
        separatorBuilder: (ctx, index) => const SizedBox(
          height: 25,
        ),
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   BlocProvider.of<DownloadsBloc>(context)
    //      .add(const DownloadsEvent.getDownloadsImage());
    // });
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kwhitecolor,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        const Text(
          "We Will Download a personalised Selection\n of movies and shows for you, so there's\n allways somthing to watch on your\ndevice",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        kheight,
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return SizedBox(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: size.width * 0.36,
                    backgroundColor: Colors.grey.withOpacity(0.5),
                  ),
                  DownloadImageWidget(
                    imageList:
                        '$imaageAppendUrl${state.downloads?[0].posterPath}',
                    margin: const EdgeInsets.only(left: 170, top: 50),
                    angle: 25,
                    size: Size(size.width * 0.35, size.width * 0.55),
                  ),
                  DownloadImageWidget(
                    imageList:
                        '$imaageAppendUrl${state.downloads?[1].posterPath}',
                    margin: const EdgeInsets.only(right: 170, top: 50),
                    angle: -25,
                    size: Size(size.width * 0.35, size.width * 0.55),
                  ),
                  DownloadImageWidget(
                    imageList:
                        '$imaageAppendUrl${state.downloads?[2].posterPath}',
                    margin: const EdgeInsets.only(top: 17),
                    size: Size(size.width * 0.42, size.width * 0.63),
                    angle: 0,
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: kButtonColorBlue,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Set up",
                style: TextStyle(
                  color: kwhitecolor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        kheight,
        MaterialButton(
          color: kButtonColorWhite,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "See what you can download",
              style: TextStyle(
                color: kBlackColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _smartDownloads extends StatelessWidget {
  const _smartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        kwidth,
        Icon(
          Icons.settings,
          color: kwhitecolor,
        ),
        kwidth,
        kheight,
        Text(
          'smart Downloads',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget(
      {super.key,
      required this.imageList,
      this.angle = 0,
      required this.margin,
      required this.size,
      this.radious = 10});

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radious;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radious),
          child: Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  imageList,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
