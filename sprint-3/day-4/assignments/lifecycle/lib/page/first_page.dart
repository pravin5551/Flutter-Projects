import 'package:flutter/material.dart';
import 'package:lifecycle/widget/number_widget.dart';


class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int number = 1;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('StatefulWidget Lifecycle '),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => setState(() => number += 1),
            ),
          ],
        ),
        body: NumberWidget(),


      );
}
