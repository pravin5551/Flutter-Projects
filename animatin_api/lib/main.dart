import 'package:animatin_api/secon.dart';
import 'package:flutter/material.dart';
import 'first.dart';


void main() {
  runApp(MaterialApp(

    initialRoute: '/',

    routes: {

      '/':(context) => PageOne(),

      '/second': (context) => PageTwo(),

    },
  ),);
}