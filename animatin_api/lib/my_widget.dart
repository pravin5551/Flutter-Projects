

import 'package:flutter/material.dart';


class MyWidgetApp extends StatelessWidget {
 MyWidgetApp({required this.color1, required this.color2, required this.color3, required this.child}) ;

 Color color1;
Color color2;
Color color3;
Widget child;
  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: AlignmentDirectional.centerEnd,
      children: <Widget>[
        Container(
          color: color1,
          child: SizedBox(
            height: 100,
            width: 100,
          ),
        ),
        Container(
          color: color2,
          child: SizedBox(
            height: 80,
            width: 80,
          ),
        ),
        Container(
          color: color3,
          child: SizedBox(
            height: 50,
            width: 50,
          ),
        ),
        child
      ],
    );
  }
}
