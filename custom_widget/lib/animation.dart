

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationExpenses extends StatefulWidget {
  const AnimationExpenses({Key? key}) : super(key: key);

  @override
  _AnimationExpensesState createState() => _AnimationExpensesState();
}

class _AnimationExpensesState extends State<AnimationExpenses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[100],
      body:Column(
        children: [
          Container(
              height: 200,
              width: 400,
              child:Row(
                children: [
                  Image.asset("images/rupee.png", width: 50,height: 50,),
                  Lottie.asset('assets/data.json'),

                ],
              )),
          SizedBox(
            height: 1,
            width: 1,
          ),

      Center(
        child: Card(
          elevation: 50,
          shadowColor: Colors.black,
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(20)),
              ),
          child: SizedBox(
            width: 300,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Center(child: Lottie.asset('assets/dataa.json')),
                ],//SizedBox

          ), //Column
        ), //Padding
    ),
        ),
      ),],
      ),
    );
  }
}
