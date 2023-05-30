import 'package:flutter/material.dart';
import 'package:groceryapp_ui/homepage.dart';
// import 'package:groceryapp_ui/secondScreen.dart';
// import 'package:groceryapp_ui/thirdscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}
