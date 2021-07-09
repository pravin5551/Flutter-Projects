import 'package:flutter/material.dart';
import 'package:lifecycle/page/first_page.dart';
void main() {


  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Stateful Widget Lifecycle",
    home: FirstPage(),
  );
}
