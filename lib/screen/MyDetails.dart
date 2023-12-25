import 'package:flutter/material.dart';

class MyDetails extends StatelessWidget {
  const MyDetails({super.key});

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
      body: Container(
        child: Center(
          child: Text("Details Form"),
        ),
      ),
    );
  }
}
