import 'package:flutter/material.dart';

class AppBarr extends StatelessWidget {
  const AppBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),color: Colors.white,
          onPressed: () {},
        ),
        title: Text("HOME",style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.book),color: Colors.white,
            onPressed: () {},
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.amberAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(0)),
        ),
        flexibleSpace: Image.network(
          "https://images.pexels.com/photos/1585325/pexels-photo-1585325.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        fit: BoxFit.fill,),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Flutter Application Development",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.pinkAccent)),
            Text("half the way"),
          ],
        ),
      ),
    );
  }
}
