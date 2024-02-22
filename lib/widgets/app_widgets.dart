import 'package:android/widgets/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppWidgetList extends StatelessWidget {
  const AppWidgetList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const AppWidget(
          bgColor: Colors.white,
          child: Icon(
            Icons.call,
            size: 35,
          ),
        ),
        const AppWidget(
          bgColor: Colors.white,
          child: Icon(
            Icons.forum,
            size: 35,
          ),
        ),
        AppWidget(
          bgColor: Colors.white,
          child: SvgPicture.asset(
            'assets/chrome.svg',
            height: 35,
          ),
        ),
        const AppWidget(
          bgColor: Colors.white,
          child: Icon(
            Icons.photo_camera,
            size: 35,
          ),
        ),
        const AppWidget(
          bgColor: Colors.white,
          child: Icon(
            Icons.photo_library,
            size: 35,
          ),
        ),
      ],
    );
  }
}
