import 'package:flutter/material.dart';
import 'screen/Home.dart';
import 'screen/DashBoard.dart';
import 'screen/AppBarr.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Third App",
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: AppBarr());
  }
}
