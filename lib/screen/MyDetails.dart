import 'package:flutter/material.dart';
import 'package:flutter_second_application/models/ProductModel.dart';

class MyDetails extends StatelessWidget {
  MyDetails({super.key, required this.productname, required this.productdetails});
  String productname, productdetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DETAILS"),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back),),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.chat_bubble),
            title: Text(productname),
            subtitle: Text(productdetails),
          ),
        ],
      ),
    );
  }
}
