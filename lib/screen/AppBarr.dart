import 'package:flutter/material.dart';

class AppBarr extends StatelessWidget {
  const AppBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        title: Text("ROWS AND COLUMNS"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: Image(image: AssetImage("images/krishnaimage.jpg"),width: 120.0,)),
                Expanded(flex:2,child: Image(image: AssetImage("images/krishnaimage.jpg"),width: 120.0,)),
                Expanded(child: Image(image: AssetImage("images/krishnaimage.jpg"),width: 120.0,)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star_border),
                Icon(Icons.star_border),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children : [
                  Icon(Icons.phone, size: 30.0),
                  Text("PHONE")
                  ],
                ),
                Column(
                  children : [
                    Icon(Icons.alt_route, size: 30.0),
                    Text("ROUTE")
                  ],
                ),
                Column(
                  children : [
                    Icon(Icons.share, size: 30.0),
                    Text("SHARE")
                  ],
                )

              ],
            ),
          ],
        ),
      ),
    );
  }
}
