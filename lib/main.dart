import 'package:flutter/material.dart';
import 'screen/DashBoard.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Second App",
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: DashBoard());
  }
}
