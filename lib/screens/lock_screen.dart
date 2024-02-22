import 'package:android/constants/app_routes.dart';
import 'package:android/screens/home_screen.dart';
import 'package:android/widgets/date_and_time.dart';
import 'package:flutter/material.dart';

import '../widgets/finger_print_widget.dart';

class LockScreen extends StatelessWidget {
  const LockScreen({super.key});

  static const routeName = lockScreenRouteName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/scenery.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    DateAndTimeWidget(),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.call,
                          color: Colors.white70,
                          size: 35,
                        ),
                        Icon(
                          Icons.camera_alt,
                          color: Colors.white70,
                          size: 35,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              child: FingerPrintWidget(
                color: Colors.black,
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    HomeScreen.routeName,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
