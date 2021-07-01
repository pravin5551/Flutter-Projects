import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Card(
                  color: Colors.black,
                  margin: EdgeInsets.all(20),
                  child: Text("308 X 42",
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                )),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.black,
                    child: Text("12, 936",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.black,
                    child: Text("AC",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.black,
                    child: Text("+/",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.black,
                    child: Text("%",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.black,
                    child: Text("#",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.black,
                    child: Text("7",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.black,
                    child: Text("8",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.black,
                    child: Text("9",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.black,
                    child: Text("X",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.black,
                    child: Text("4",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.black,
                    child: Text("5",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.black,
                    child: Text("6",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.black,
                    child: Text("-",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.black,
                    child: Text("1",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.black,
                    child: Text("2",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.black,
                    child: Text("3",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.black,
                    child: Text("+",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.black,
                    child: Text("^",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.black,
                    child: Text("0",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.black,
                    child: Text(".",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.black,
                    child: Text("=",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
