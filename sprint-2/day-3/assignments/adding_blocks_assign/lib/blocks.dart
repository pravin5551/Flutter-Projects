

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlockBody extends StatefulWidget {
  const BlockBody({Key? key}) : super(key: key);

  @override
  _BlockBodyState createState() => _BlockBodyState();
}

class _BlockBodyState extends State<BlockBody> {

var colors = " ";

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        child: Center(
            child: Row(
              children:<Widget> [

                Container(
                  child: Expanded(
                      child: FlatButton(
                          onPressed: () {
                            setState(() {
                              colors = "red";
                            });

                            print('button 1 is clicked');
                          }, child: Row(
                             children: <Widget>[
                               Container(
                                    margin: EdgeInsets.only(left: 30),
                                    width: 150,
                                    height: 150,
                                    color: Colors.red,
                                    child: Center(
                                    child: Text("72 kg", style: TextStyle(fontSize: 25))),
                          ),
                              Container(
                                    margin: EdgeInsets.only(left: 30),
                                    width: 150,
                                    height: 150,
                                    color: Colors.purple,
                                    child: Center(
                                        child: Text("175 cm", style: TextStyle(fontSize: 25))),
                              ),
                            ],
                      ) )
                  ),
                ),
                Container(
                  child: Expanded(
                      child: FlatButton(
                          onPressed: () {
                            setState(() {


                            }
                            );

                            print('button 2 is clicked');
                          }, child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            width: 150,
                            height: 150,
                            color: Colors.red,
                            child: Center(
                                child: Text("72 kg", style: TextStyle(fontSize: 25))),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            width: 150,
                            height: 150,
                            color: Colors.purple,
                            child: Center(
                                child: Text("175 cm", style: TextStyle(fontSize: 25))),
                          ),
                        ],
                      ),

                      )
                  ),
                ),
              ],
            )
        )
    );
  }
}
