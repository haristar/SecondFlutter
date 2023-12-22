import 'package:flutter/material.dart';
import 'dart:math';

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
          icon: Icon(
            Icons.alt_route_rounded,
          ),
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
