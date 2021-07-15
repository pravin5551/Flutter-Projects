import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Google Animation Example',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blue,
        backgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
      },
    ),
  );
}
