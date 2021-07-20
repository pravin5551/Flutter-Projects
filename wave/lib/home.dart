import 'dart:core';
import 'dart:math';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  double value = 20.0;

  double lengthB = 10;
  double redLength = 20;
  double yelloLength = 15;
  double greenLength = 50;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Wave Animation',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.sync,
              color: Colors.green,
            ),
            onPressed: () {
              setState(() {
                changewidget();
              });
            },
          )
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [


              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      margin: EdgeInsets.all(10),
                      child: Card(
                        color: Colors.yellow,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: SizedBox(
                          height: yelloLength * 2,
                          width: 10,

                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      margin: EdgeInsets.all(10),
                      child: Card(
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: SizedBox(
                          height: lengthB * 2,
                          width: 10,

                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      margin: EdgeInsets.all(10),
                      child: Card(
                        color: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: SizedBox(
                          height: redLength * 2,
                          width: 10,

                        ),
                      ),
                    ),

                    Container(
                      width: 50,
                      margin: EdgeInsets.all(10),
                      child: Card(
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: SizedBox(
                          height: greenLength * 2,
                          width: 10,

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Listning ...',
                style: TextStyle(fontSize: value, color: Colors.red, fontStyle: FontStyle.normal),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void changewidget() {
    lengthB = Random().nextDouble() * 50;
    redLength = Random().nextDouble() * 50;
    yelloLength = Random().nextDouble() * 50;
    greenLength = Random().nextDouble() * 50;
  }
}
