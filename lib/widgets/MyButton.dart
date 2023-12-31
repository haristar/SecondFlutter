import 'package:flutter/material.dart';

import '../screen/MyDetails.dart';

class MyButton extends StatelessWidget {
   MyButton({
    super.key,
    required this.onPress
  });

  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Text(
        "submit form".toUpperCase(),
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      style: OutlinedButton.styleFrom(minimumSize: Size(200, 50)),
      onPressed: onPress,
    );
  }
}
