import 'package:flutter/material.dart';
import 'package:e_walle/constants.dart';

class cards extends StatelessWidget {
  cards({@required this.cardicon = '', this.label = ''});

  final String cardicon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      decoration: BoxDecoration(
        color: light_gray,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 25,
            backgroundColor: dark_gray,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
              child: Image(
                image: AssetImage(cardicon),
              ),
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
