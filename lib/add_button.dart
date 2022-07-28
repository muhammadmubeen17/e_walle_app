import 'package:flutter/material.dart';
import 'package:e_walle/constants.dart';

class Addicon extends StatelessWidget {
  const Addicon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: CircleAvatar(
        radius: 25,
        backgroundColor: yellow,
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add),
          color: Colors.black,
        ),
      ),
    );
  }
}
