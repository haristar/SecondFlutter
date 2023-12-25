// import 'package:flutter/material.dart';
// import 'screen/Home.dart';
// import 'screen/DashBoard.dart';
// import 'screen/AppBarr.dart';

// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//         title: "Third App",
//         themeMode: ThemeMode.system,
//         debugShowCheckedModeBanner: false,
//         home: Home());
//   }
// }

// import 'package:flutter/material.dart';
//
//
// void main() => runApp(CStatelessWidget());
//
// class CStatelessWidget extends StatelessWidget {
//   const CStatelessWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("STATEFUL WIDGET"),
//           centerTitle: true,
//         ),
//         body: CStatefulWidget(),
//       ),
//     );
//   }
// }
//
// class CStatefulWidget extends StatefulWidget {
//   const CStatefulWidget({super.key});
//
//   @override
//   State<CStatefulWidget> createState() => _CStatefulWidgetState();
// }
//
// class _CStatefulWidgetState extends State<CStatefulWidget> {
//   bool like = false;
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         ListTile(
//           leading: Icon(Icons.person),
//           title: Text("Nike Shoes"),
//           subtitle: Text("NIKE"),
//           trailing: IconButton(
//             icon: (like) ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
//             onPressed: () {
//               setState(() {
//                 like = !like;
//               });
//             },
//           ),
//         )
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_second_application/screen/MyForm.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "USER FORM",
      themeMode: ThemeMode.system,
      home: MyForm(),
    );
  }
}





