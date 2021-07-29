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
            Padding(padding: EdgeInsets.only(top: 100)),
            Row(
              children: [
                Text(
                  "My Body",
                  style: TextStyle(fontSize: 50, color: Colors.black),
                )
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(top: 150)),
                Text(
                  "              Basics",
                  style: TextStyle(fontSize: 25),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 30),
                  width: 150,
                  height: 150,
                  color: Colors.orange,
                  child: Center(
                      child: Text("72 kg", style: TextStyle(fontSize: 25))),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  width: 150,
                  height: 150,
                  color: Colors.blue,
                  child: Center(
                      child: Text("175 cm", style: TextStyle(fontSize: 25))),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30,top: 20),
                  width: 330,
                  height: 150,
                  color: Colors.blue,
                  child: Center(
                      child: Text("175 cm"
                          "Boxing, Gym, Running", style: TextStyle(fontSize: 25))),
                ),
              ],
            ),

            Row(
              children: [
                Padding(padding: EdgeInsets.only(top: 20)),
                Text(
                  "              Advance",
                  style: TextStyle(fontSize: 50),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}