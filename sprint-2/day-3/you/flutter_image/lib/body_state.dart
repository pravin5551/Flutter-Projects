import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BodyStatful extends StatefulWidget {


  @override
  _BodyStatfulState createState() => _BodyStatfulState();
}

class _BodyStatfulState extends State<BodyStatful> {
  int diceNumber  = 1;
  int dice2Number = 2;
  var turn = "";

  // Widget getFlatButtonWithImage(int value, int img){
  //   return
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Row(
          children:<Widget> [
            Text(turn, style: TextStyle(fontSize: 30.0, color: Colors.blue),),
            Container(
              child: Expanded(
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          diceNumber= Random().nextInt(5)+1;
                          turn= '1';
                        });

                        print('button 1 is clicked');
                      }, child: Image.asset('images/dice$diceNumber.png'))
              ),
            ),
            Container(
              child: Expanded(
                  child: FlatButton(
                      onPressed: () {
                        setState(() {

                          dice2Number= Random().nextInt(5)+1;
                          turn= '2';
                        }
                        );

                        print('button 2 is clicked');
                      }, child: Image.asset('images/dice$dice2Number.png'))
              ),
            ),
          ],
        )
      )
    );

  }
}


