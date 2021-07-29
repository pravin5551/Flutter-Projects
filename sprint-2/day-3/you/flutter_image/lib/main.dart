import 'dart:math';
import 'package:flutter/material.dart';
import 'body_state.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Dice Game"),
      ),
      body: BodyStatful(),
    ),

  ));
}


class GameBody extends StatelessWidget {
 final int diceNumber = 1;
 final int dice2Number =1;
 Widget getFlatButtonWithImage(int value, int img){
   return FlatButton(
       onPressed: () {
         print('button $value is clicked');
       }, child: Image.asset('images/dice$img.png'));
 }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Row(
          children: [
            Container(
              child: Expanded(
                child: getFlatButtonWithImage(1,1),
              ),
            ),
            Container(
              child: Expanded(
                child: getFlatButtonWithImage(2,2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}