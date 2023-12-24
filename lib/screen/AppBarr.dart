import 'package:flutter/material.dart';

class AppBarr extends StatelessWidget {
  const AppBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("FLOATING ACTION BAR",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
        foregroundColor: Colors.black,
        elevation: 5.0,
        mini: true,
        //   shape: BeveledRectangleBorder(
        //     borderRadius: BorderRadius.circular(1.0),
        //     side: BorderSide(color: Colors.black, width: 1.0),
        // ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.home),
                  Text("Home"),
                ],
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(right: 150.0,left: 60.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.shopping_cart,
                   // color: Colors.white,
                  ),
                  Text(
                    "Shop",
                    //style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(left: 0.0,right: 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.favorite,
                  ),
                  Text(
                    "Fav",)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 0.0,left: 40.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.settings,
                    //color: Colors.white,
                  ),
                  Text(
                    "Setting",
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
