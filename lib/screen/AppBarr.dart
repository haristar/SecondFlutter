import 'package:flutter/material.dart';

class AppBarr extends StatelessWidget {
  const AppBarr({super.key});

  static const List<String> products = ["SOFA", "BED", "CHAIR"];
  static const List<String> productDetails = [
    "6-face Sofa",
    "Master Bed",
    "4-Person Chair"
  ];
  static const List<num> price = [8000.0, 5000.0, 2000.0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NAVIGATION DRAWER")),
      drawer: Drawer(
        elevation: 200.0,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text("hari.prem24@gmail.com"),
              accountName: Text("HARI PREM R C"),
              margin: EdgeInsets.all(0.0),
              currentAccountPicture: CircleAvatar(foregroundImage: AssetImage("images/myimage.jpg"),),
              otherAccountsPictures: [
                CircleAvatar(foregroundImage: AssetImage("images/krishnaimage.jpg"),),
                CircleAvatar(foregroundImage: AssetImage("images/pokemonimage.jpg"),),
              ],
            ),
            ListTile(leading: Icon(Icons.home),title: Text("HOME"), onTap: (){},),
            ListTile(leading: Icon(Icons.shopping_cart),title: Text("SHOP"), onTap: (){},),
            ListTile(leading: Icon(Icons.favorite),title: Text("FAVORITE"), onTap: (){},),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("LABELS"),
            ),
            ListTile(leading: Icon(Icons.label_important),title: Text("RED"), onTap: (){},),
            ListTile(leading: Icon(Icons.label_important),title: Text("BLUE"), onTap: (){},),
            ListTile(leading: Icon(Icons.label_important),title: Text("GREEN"), onTap: (){},),
          ],
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: products.length,
          itemExtent: 100.0,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(child: Text(products[index][0])),
              title: Text(products[index]),
              subtitle: Text(productDetails[index]),
              trailing: Text(price[index].toString()),
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}
