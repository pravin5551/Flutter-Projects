
import 'package:custom_widget/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {


  @override
  _StackPageState createState() => new _StackPageState();
}

class _StackPageState extends State<StackPage> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: MyWidgetApp(color_blue : Colors.blue, color_green: Colors.greenAccent,color_indigo: Colors.indigo,color_red: Colors.red,color_yello: Colors.yellow,)
      ),
    );
  }

}