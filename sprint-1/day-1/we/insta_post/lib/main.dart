import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Instagram Page",
              style: TextStyle(color: Colors.black, fontSize: 30)),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'images/bg.jpg',
                    width: 120,
                    height: 122,
                  ),
                ),
                Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: [
                            Text(
                              "102",
                              style: TextStyle(fontSize: 15, color: Colors.black),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "posts",
                              style: TextStyle(fontSize: 15, color: Colors.black),
                            )
                          ],
                        ),
                      ],
                    )),
                Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: [
                            Text(
                              "554",
                              style: TextStyle(fontSize: 15, color: Colors.black),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 20)),
                            Text(
                              "followers",
                              style: TextStyle(fontSize: 15, color: Colors.black),
                            )
                          ],
                        ),
                      ],
                    )),
                Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: [
                            Text(
                              "0",
                              style: TextStyle(fontSize: 15, color: Colors.black),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 20)),
                            Text(
                              "following",
                              style: TextStyle(fontSize: 15, color: Colors.black),
                            )
                          ],
                        ),
                      ],
                    )),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                Padding(padding: EdgeInsets.only(top: 40)),
                Text("Pravin Pawar"),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                Padding(padding: EdgeInsets.only(top: 40)),
                Text("Android Developer"),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                Padding(padding: EdgeInsets.only(top: 40)),
                Text("Best is yet to come"),
              ],
            ),
            Divider(
              height: 10,
              color: Colors.black,
            ),
            Column(
              children: <Widget>[
                Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'images/bg.jpg',
                        width: 150,
                        height: 150,
                      ),
                    ),
                    Expanded(
                        child: Image.asset(
                          'images/bg.jpg',
                          width: 150,
                          height: 150,
                        )),
                    Expanded(
                        child: Image.asset(
                          'images/bg.jpg',
                          width: 150,
                          height: 150,
                        )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'images/bg.jpg',
                        width: 150,
                        height: 150,
                      ),
                    ),
                    Expanded(
                        child: Image.asset(
                          'images/bg.jpg',
                          width: 150,
                          height: 150,
                        )),
                    Expanded(
                        child: Image.asset(
                          'images/bg.jpg',
                          width: 150,
                          height: 150,
                        )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'images/bg.jpg',
                        width: 150,
                        height: 150,
                      ),
                    ),
                    Expanded(
                        child: Image.asset(
                          'images/bg.jpg',
                          width: 150,
                          height: 150,
                        )),
                    Expanded(
                        child: Image.asset(
                          'images/bg.jpg',
                          width: 150,
                          height: 150,
                        )),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
