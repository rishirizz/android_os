import 'package:android/screens/lock_screen.dart';
import 'package:android/widgets/date_and_time.dart';
import 'package:android/widgets/finger_print_widget.dart';
import 'package:flutter/material.dart';

import '../constants/app_routes.dart';

class AlwaysOnDisplayScreen extends StatelessWidget {
  const AlwaysOnDisplayScreen({super.key});

  static const routeName = alwaysOnDisplayScreenRouteName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const DateAndTimeWidget(),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/battery.png',
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      '70%',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    )
                  ],
                )
              ],
            ),
            Positioned(
              bottom: 20,
              child: FingerPrintWidget(
                color: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    LockScreen.routeName,
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
