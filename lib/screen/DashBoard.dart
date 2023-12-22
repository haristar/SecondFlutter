import 'package:flutter/material.dart';
import 'dart:math';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard".toUpperCase()),
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: Image.asset(
          "images/krishnaimage.jpg",
          width: 300,
          height: 560,
          alignment: Alignment.center,
        )));
  }
}

// int getRandom() {
//   return Random().nextInt(100);
// }
