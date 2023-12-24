import 'package:flutter/material.dart';

class AppBarr extends StatelessWidget {
  const AppBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        title: Text(
          "MY PROFILE",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          constraints: BoxConstraints.expand(width: 300.0, height: 500.0),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.white24,
                  offset: Offset(0, 2),
                  spreadRadius: 5.0,
                  blurRadius: 10.0),
            ],
            image: DecorationImage(
              image: AssetImage("images/myimage.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Stack(
            children: [
              Text("HEllo There!",
                  style:
                      TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold)),
              Positioned(
                  top: 15.0,
                  child: Text("It's a silent sunnday!!!",
                      style: TextStyle(
                          fontSize: 10.0, fontWeight: FontWeight.bold))),
              Positioned(
                  bottom: 15.0,
                  right: 0.0,
                  child: Text("Hari PRem R C",
                      style: TextStyle(
                          fontSize: 10.0, fontWeight: FontWeight.bold))),
              Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: Text("signing off!",
                      style: TextStyle(
                          fontSize: 10.0, fontWeight: FontWeight.bold))),
            ],
          ),
        ),
      ),
    );
  }
}
