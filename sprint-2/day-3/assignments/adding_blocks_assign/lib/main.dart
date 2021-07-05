import 'package:flutter/material.dart';

import 'blocks.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Building Block"),
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Color _buttonColorBlue = Colors.blue;
  Color _buttonColorRed = Colors.red;
  Color _buttonColorPurple = Colors.purple;
  Color _buttonColorBlack = Colors.black;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.grey[400],
        body: SafeArea(
          child: Center(
              child: Container(
                child: Column(
                  children: <Widget>[

                    Row(
                      children: [
                        RaisedButton(
                          color: _buttonColorBlue,
                          onPressed: () {
                            setState(() {
                              _buttonColorBlue = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorRed,
                          onPressed: () {
                            setState(() {
                              _buttonColorRed = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorBlack,
                          onPressed: () {
                            setState(() {
                              _buttonColorBlack = Colors.red;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        )
                      ],
                    ),

                    Divider(
                      height: 10,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        RaisedButton(
                          color: _buttonColorBlue,
                          onPressed: () {
                            setState(() {
                              _buttonColorBlue = Colors.black;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorRed,
                          onPressed: () {
                            setState(() {
                              _buttonColorRed = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorBlack,
                          onPressed: () {
                            setState(() {
                              _buttonColorBlack = Colors.pink;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorBlack,
                          onPressed: () {
                            setState(() {
                              _buttonColorBlack = Colors.pink;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorBlack,
                          onPressed: () {
                            setState(() {
                              _buttonColorBlack = Colors.pink;
                            });
                          },
                        )
                      ],
                    ),
                    Divider(
                      height: 10,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        RaisedButton(
                          color: _buttonColorBlue,
                          onPressed: () {
                            setState(() {
                              _buttonColorBlue = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorRed,
                          onPressed: () {
                            setState(() {
                              _buttonColorRed = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.yellow;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.black;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorBlack,
                          onPressed: () {
                            setState(() {
                              _buttonColorBlack = Colors.yellow;
                            });
                          },
                        )
                      ],
                    ),

                    Divider(
                      height: 10,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        RaisedButton(
                          color: _buttonColorBlue,
                          onPressed: () {
                            setState(() {
                              _buttonColorBlue = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorRed,
                          onPressed: () {
                            setState(() {
                              _buttonColorRed = Colors.purple;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.white12;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.blue;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.redAccent;
                            });
                          },
                        )
                      ],
                    ),
                    Divider(
                      height: 10,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        RaisedButton(
                          color: _buttonColorBlue,
                          onPressed: () {
                            setState(() {
                              _buttonColorBlue = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorRed,
                          onPressed: () {
                            setState(() {
                              _buttonColorRed = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.indigo;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        )
                      ],
                    ),

                    Divider(
                      height: 10,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        RaisedButton(
                          color: _buttonColorBlue,
                          onPressed: () {
                            setState(() {
                              _buttonColorBlue = Colors.indigo;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorRed,
                          onPressed: () {
                            setState(() {
                              _buttonColorRed = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.indigo;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.indigo;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.deepOrange;
                            });
                          },
                        )
                      ],
                    ),
                    Divider(
                      height: 10,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        RaisedButton(
                          color: _buttonColorBlue,
                          onPressed: () {
                            setState(() {
                              _buttonColorBlue = Colors.deepOrange;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorRed,
                          onPressed: () {
                            setState(() {
                              _buttonColorRed = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.deepOrange;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.deepOrange;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.deepOrange;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        )
                      ],
                    ),

                    Divider(
                      height: 10,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        RaisedButton(
                          color: _buttonColorBlue,
                          onPressed: () {
                            setState(() {
                              _buttonColorBlue = Colors.deepOrange;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorRed,
                          onPressed: () {
                            setState(() {
                              _buttonColorRed = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.deepOrange;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.deepOrange;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.deepOrange;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        )
                      ],
                    ),
                    Divider(
                      height: 10,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        RaisedButton(
                          color: _buttonColorBlue,
                          onPressed: () {
                            setState(() {
                              _buttonColorBlue = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorRed,
                          onPressed: () {
                            setState(() {
                              _buttonColorRed = Colors.deepOrange;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.deepOrange;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.deepOrange;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        )
                      ],
                    ),

                    Divider(
                      height: 10,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        RaisedButton(
                          color: _buttonColorBlue,
                          onPressed: () {
                            setState(() {
                              _buttonColorBlue = Colors.blueGrey;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorRed,
                          onPressed: () {
                            setState(() {
                              _buttonColorRed = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.blueGrey;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.blueGrey;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.blueGrey;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.blueGrey;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        )
                      ],
                    ),
                    Divider(
                      height: 10,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        RaisedButton(
                          color: _buttonColorBlue,
                          onPressed: () {
                            setState(() {
                              _buttonColorBlue = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorRed,
                          onPressed: () {
                            setState(() {
                              _buttonColorRed = Colors.blueGrey;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.blueGrey;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        )
                      ],
                    ),

                    Divider(
                      height: 10,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        RaisedButton(
                          color: _buttonColorBlue,
                          onPressed: () {
                            setState(() {
                              _buttonColorBlue = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorRed,
                          onPressed: () {
                            setState(() {
                              _buttonColorRed = Colors.blueGrey;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.teal;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.teal;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.teal;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        )
                      ],
                    ),
                    Divider(
                      height: 10,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        RaisedButton(
                          color: _buttonColorBlue,
                          onPressed: () {
                            setState(() {
                              _buttonColorBlue = Colors.teal;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorRed,
                          onPressed: () {
                            setState(() {
                              _buttonColorRed = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.teal;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        )
                      ],
                    ),

                    Divider(
                      height: 10,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        RaisedButton(
                          color: _buttonColorBlue,
                          onPressed: () {
                            setState(() {
                              _buttonColorBlue = Colors.teal;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorRed,
                          onPressed: () {
                            setState(() {
                              _buttonColorRed = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.teal;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.teal;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.teal;
                            });
                          },
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        RaisedButton(
                          color: _buttonColorPurple,
                          onPressed: () {
                            setState(() {
                              _buttonColorPurple = Colors.green;
                            });
                          },
                        )
                      ],
                    )















                  ],
                ),
              )
          ),
        )
    );
  }
}