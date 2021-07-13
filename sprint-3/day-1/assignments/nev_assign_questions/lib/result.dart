

import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultSceern extends StatelessWidget {

  TextEditingController textFieldController = TextEditingController();

  final second_ans;
  final home_ans;
  final third_ans;

  ResultSceern({@required this.second_ans, @required this.home_ans, @required this.third_ans});


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text("Third Screen"),

      ),

      body: Center(

        child: Padding(
          padding: const EdgeInsets.all(48.0),
          child: Container(

            margin: const EdgeInsets.all(15.0),
            child: Center(

              child: Column(
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.all(38.0),
                    child: Text("result 1 : $home_ans"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(38.0),
                    child: Text("result 2 : $second_ans"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(38.0),
                    child: Text('result 3 : $third_ans'),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(20.0),

                    child: ContestResult(),
                  ),
                ],
              ),

            ),
          ),
        ),

      ),

    );
  }

  Widget ContestResult() {
    String result = "";
    if (home_ans == "Narendra Godi" && second_ans=="Prateek Shukla" && third_ans=="1947") {
      result = "Wowww, You did it..... PASSED!";
    } else {
      result = result ="Oop's Better Luck Next Time :( ";
    }
    return Text(
      "$result",
      style: TextStyle(color: Colors.teal, fontSize: 20),
    );
  }


}
