import 'package:flutter/material.dart';

class AppBarr extends StatelessWidget {
   const AppBarr({super.key});

  static const List<String> products = ["SOFA","BED","CHAIR"];
  static const List<String> productDetails = ["6-face Sofa", "Master Bed","4-Person Chair"];
  static const List<num> price = [8000.0,5000.0,2000.0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount : products.length,
          itemExtent: 100.0,
          itemBuilder: (context,index){
            return ListTile(
              leading: CircleAvatar(child : Text(products[index][0])),
              title: Text(products[index]),
              subtitle: Text(productDetails[index]),
              trailing: Text(price[index].toString()),onTap: (){},
            );
          },
        ),
      ),
    );
  }
}
