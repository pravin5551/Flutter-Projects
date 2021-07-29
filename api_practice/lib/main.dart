import 'package:flutter/material.dart';


import 'Model/constants.dart';
import 'details.dart';
import 'home.dart';

void main() => runApp(
      MaterialApp(
        title: 'Evaluation',
        theme: ThemeData.dark().copyWith(
          primaryColor: Colors.green,
          backgroundColor: Colors.white,
        ),
        initialRoute: '/',
        routes: {
          MyConstants.HOME_PATH: (context) => HomePage(),
          MyConstants.STATE_DETAILS : (context) => StateDetails(),
        },
      ),
    );
