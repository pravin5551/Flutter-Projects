import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidgetApp extends StatelessWidget {
  MyWidgetApp({required this.color_blue, required this.color_yello, required this.color_indigo,
    required this.color_green, required this.color_red,}) ;

  Color color_blue;
  Color color_yello;
  Color color_indigo;
  Color color_red;
  Color color_green;


  @override
  Widget build(BuildContext context) {
    return Container(
         child: Stack(
           alignment: Alignment.center,
           children: <Widget>[
             SizedBox(
               width: 300.0,
               height: 300.0,
               child: Container(
                 color: color_yello,
               ),
             ),
             Positioned(
               left: 20.0,
               top: 20.0,
               width: 100.0,
               height: 100.0,
               child: Container(
                 color: color_indigo,
               ),
             ),
             Positioned(
               right: 40.0,
               top: 40.0,
               width: 100.0,
               height: 100.0,
               child: Container(
                 color: color_red,
               ),
             ),
             Positioned(
               left: 40.0,
               bottom: 40.0,
               width: 100.0,
               height: 100.0,
               child: Container(
                 color: color_green,
               ),
             ),
             Positioned(
               bottom: 20.0,
               right: 20.0,
               width: 100.0,
               height: 100.0,
               child: Container(
                 color: color_blue,
               ),
             ),
           ],
         ),
    );
  }
}
