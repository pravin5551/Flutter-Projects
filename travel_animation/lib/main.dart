import 'package:flutter/material.dart';
import 'package:travel_animation/trips.dart';

import 'dashboard.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Travel Trips Animation',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blue,
        backgroundColor: Colors.white,
      ),




      initialRoute: '/trips',
      routes: {
        '/': (context) => DashBoardPage(),
        '/trips': (context) => TripsPage(),

      },
    ),
  );
}
