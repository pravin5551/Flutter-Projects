import 'dart:js';

import 'package:flutter/material.dart';
import 'package:nev_assign_questions/result.dart';
import 'package:nev_assign_questions/secon.dart';
import 'package:nev_assign_questions/third.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(

    initialRoute: '/',

    routes: {

      '/':(context) => HomeScreen(),

      '/second': (context) => SecondScreen(),

      '/third': (context) => ThirdScreen(),

      '/result' : (context) => ResultSceern()

    },

  ),);
}