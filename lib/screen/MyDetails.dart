import 'package:flutter/material.dart';

class MyDetails extends StatelessWidget {
  MyDetails({super.key, required this.productName});
  String productName;

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
            trailing: Icon(Icons.done),
          ),
        ],
      ),
    );
  }
}
