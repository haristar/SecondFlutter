import 'package:flutter/material.dart';
import 'dart:math';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("DASHBOARD".toUpperCase()),
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: 280.0,
        width: 450.0,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(50.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white70,
          border: Border.all(color: Colors.teal, width: 10.0),
          //borderRadius: BorderRadius.circular(10.0),
          shape: BoxShape.circle,
          image: DecorationImage(image : AssetImage("images/krishnaimage.jpg")),
          boxShadow: [
            BoxShadow(
              color: Colors.green.shade800,
              blurRadius: 5.0,
              spreadRadius: 5.0,
              offset: Offset(0,0),
            )
          ]
          
        ),
        // child: Text(
        //   "Awesome",
        //   style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        // ),
      ),
    );
  }
}

// int getRandom() {
//   return Random().nextInt(100);
// }
