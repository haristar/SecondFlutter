import 'package:flutter/material.dart';
import 'dart:math';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text("Dashboard".toUpperCase()),
        backgroundColor: Colors.white10,
      ),
      body: Center(
        child: IconButton(
          icon: Icon(FontAwesomeIcons.bitcoin),
          onPressed: () {},
          iconSize: 100.0,
          splashColor: Colors.red,
          highlightColor: Colors.cyan,
        ),
      ),
    );
  }
}

// int getRandom() {
//   return Random().nextInt(100);
// }
