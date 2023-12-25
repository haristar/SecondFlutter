import 'package:flutter/material.dart';
import 'package:flutter_second_application/screen/MyDetails.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FORM"),
        centerTitle: true,
      ),
      body: Center(
        child: OutlinedButton(
          child: Text("submit form".toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold),),
          style: OutlinedButton.styleFrom(minimumSize: Size(200, 50)),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return MyDetails();
            }));
          },

        ),
      ),
    );
  }
}
