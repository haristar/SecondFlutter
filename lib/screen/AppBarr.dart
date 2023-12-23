import 'package:flutter/material.dart';

class AppBarr extends StatelessWidget {
  const AppBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: ListView(
            itemExtent: 100.0,
            //padding: EdgeInsets.all(10.0),
            reverse: false,
            scrollDirection: Axis.vertical,
            //shrinkWrap: true,
            children: [
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.alarm_on,size: 30.0,),backgroundColor: Colors.brown,),
                title: Text("ALARM"),
                subtitle: Text("Morning"),
                trailing: Icon(Icons.add),
                onTap: (){},
              ),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.shopping_cart,size: 30.0,),backgroundColor: Colors.brown,),
                title: Text("SHOPPING"),
                subtitle: Text("Groceries"),
                trailing: Icon(Icons.add),
                onTap: (){},
              ),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.backup,size: 30.0,),backgroundColor: Colors.brown,),
                title: Text("BACKUP"),
                subtitle: Text("Weekly"),
                trailing: Icon(Icons.add),
                onTap: (){},
              ),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.wallet,size: 30.0,),backgroundColor: Colors.brown,),
                title: Text("SAVING"),
                subtitle: Text("Statement"),
                trailing: Icon(Icons.add),
                onTap: (){},
              )
            ],
          ),
    ));
  }
}
