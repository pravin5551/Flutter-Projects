import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {

  // This widget is the root
  // of your application

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text('Insert Image Demo'),
        ),

        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset('assets/male.png'),
            ],
          ),
        ),
      ),
    );
  }
}