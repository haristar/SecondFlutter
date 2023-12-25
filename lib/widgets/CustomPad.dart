import 'package:flutter/material.dart';
class CustomPad extends StatelessWidget {

  String title, subtitle;
  IconData leadingicon, trailingicon;

  CustomPad({
    required this.title,
    required this.subtitle,
    this.leadingicon = Icons.label,
    this.trailingicon = Icons.add_shopping_cart,
  });

  // const CustomPad({
  //   super.key,
  // });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListTile(
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(
              width: 1.0,
              color: Colors.blue,
            )
        ),
        leading: Icon(leadingicon,color: Colors.blue,),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(trailingicon,),onTap: (){},
      ),
    );
  }
}
