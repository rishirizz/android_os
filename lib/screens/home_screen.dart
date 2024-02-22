import 'package:android/widgets/app_widgets.dart';
import 'package:android/widgets/date_and_time.dart';
import 'package:flutter/material.dart';

import '../constants/app_routes.dart';
import '../widgets/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = homeScreenRouteName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/scenery.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                flex: 4,
                child: SizedBox(),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const DateAndTimeWidget(),
                      const Spacer(),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: const Search(),
                      ),
                      const AppWidgetList(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
