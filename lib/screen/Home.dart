import 'package:flutter/material.dart';

import '/widgets/CustomPad.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DashBoard"),
      ),
      body: ListView(
        children: [
          CustomPad(title: "Mouse",subtitle: "HP TECHS", leadingicon: Icons.mouse),
          CustomPad(title: "Keyboard",subtitle: "HP TECHS", leadingicon: Icons.keyboard),
          CustomPad(title: "Connectors",subtitle: "HP TECHS", leadingicon: Icons.cable),

        ],
      ),
    );
  }
}
