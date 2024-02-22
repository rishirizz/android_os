import 'package:flutter/material.dart';

class FingerPrintWidget extends StatelessWidget {
  final Color color;
  final VoidCallback onPressed;
  const FingerPrintWidget({
    required this.color,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Icon(
        Icons.fingerprint,
        color: color,
        size: 55,
      ),
    );
  }
}
