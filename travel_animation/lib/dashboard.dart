import 'dart:core';
import 'package:flutter/material.dart';



class DashBoardPage extends StatefulWidget {
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Hero(

                tag: 'image',
                child: Container(
                  child: Image.asset("assets/sea.jpg",  width: 500, height: 500,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
