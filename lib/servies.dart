import 'package:flutter/material.dart';
import 'package:e_walle/constants.dart';

class services extends StatelessWidget {
  services({@required this.cardicon, this.label = ''});

  final IconData? cardicon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: light_gray,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  cardicon,
                  size: 30,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
