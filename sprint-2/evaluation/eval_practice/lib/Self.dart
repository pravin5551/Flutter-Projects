

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Self extends StatelessWidget {
  const Self({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.red,
            child: Row(
              children: <Widget>[
                Text("This is container", style: TextStyle(fontSize: 50,color: Colors.blue),)
              ],
            ),
            height: 300.0,
            width: 300.0,
            margin: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
            padding: EdgeInsets.all(50.0),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.red,
            child: Row(
              children: <Widget>[
                Text("This is container", style: TextStyle(fontSize: 50,color: Colors.blue),)
              ],
            ),
            height: 300.0,
            width: 300.0,
            margin: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
          )
        ],
      )
    );

  }
}
