import 'package:flutter/material.dart';

class headings extends StatelessWidget {
  headings({@required this.heading = '', this.headicon});

  final String heading;
  final IconData? headicon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            heading,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Icon(
            headicon,
          ),
        ],
      ),
    );
  }
}
