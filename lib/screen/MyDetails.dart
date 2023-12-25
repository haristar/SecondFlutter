import 'package:flutter/material.dart';

class MyDetails extends StatelessWidget {
  MyDetails({super.key, required this.productName, required this.productDetails, required this.checkboxdetails});
  String productName, productDetails,checkboxdetails;

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
            title: Text(productName),
            subtitle: Text(productDetails),
            trailing:
            (checkboxdetails=="0") ? Icon(Icons.done) : Icon(Icons.workspace_premium),
          ),
        ],
      ),
    );
  }
}
