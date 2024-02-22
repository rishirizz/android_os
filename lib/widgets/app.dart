import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  final Color bgColor;
  final Widget child;
  const AppWidget({
    required this.bgColor,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
