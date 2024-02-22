import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white38, borderRadius: BorderRadius.circular(15.0)),
      child: const Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 15,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.search,
              color: Colors.white,
              size: 20,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              'SEARCH',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
    );
  }
}
