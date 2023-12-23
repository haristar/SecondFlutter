import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton.icon(
          icon: Icon(Icons.add_shopping_cart),
          label: Text("Let's shop"),
          onPressed: (){},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(10.0),
            fixedSize: Size(200.0, 50.0),
            textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
            primary: Colors.yellowAccent,
            onPrimary: Colors.black,
            elevation: 5,
            shadowColor: Colors.grey,
            side: BorderSide(color: Colors.black, width: 0.5),
            shape: StadiumBorder(),
          ),
        ),
      ),
    );
  }
}
