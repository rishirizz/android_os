import 'package:flutter/material.dart';

class DateAndTimeWidget extends StatelessWidget {
  const DateAndTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Wednesday',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          '22:00',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w800,
            color: Colors.white70,
          ),
        ),
        Text(
          '14th February',
          style: TextStyle(
            fontSize: 15,
            color: Colors.white60,
          ),
        ),
      ],
    );
  }
}
