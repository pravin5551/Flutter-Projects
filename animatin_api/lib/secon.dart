

import 'package:animatin_api/my_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text('Page Two'),

      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/');
            }, child: Text("Nevigate")),
            SizedBox(
              height: 25,
              width: 100,
            ),
            Hero(
              tag: 'image',
              child: Container(
                child: Image(
                  height: 200,
                  image: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
                ),
              ),
            ),

            MyWidgetApp(color1: Colors.red, color2: Colors.yellow, color3: Colors.pink, child: Text("Hello"))
          ],

        ),
      ),

    );
  }
}

