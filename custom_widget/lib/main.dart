import 'package:custom_widget/stack.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'animation.dart';
import 'detail_balance.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => Home(),

        '/first' :(context) => StackPage(),

        '/second' :(context) => CustomeWidget(),

        '/third' :(context) => AnimationExpenses()
      },
      title: "Custom Widget and Animation",
      theme: ThemeData(
        backgroundColor: Colors.blueAccent,
        primaryColor: Colors.greenAccent,

      ),
    ),

  );
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(title: Text("Expenses UI and Custom Widgets"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget>[

            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/first');
            }, child: Text("Open Stack Page"),),

            SizedBox(
              width: 50,
              height: 50,
            ),

            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/second');
            }, child: Text("Open Costume Widget"),),

            SizedBox(
              width: 50,
              height: 50,
            ),

            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/third');
            }, child: Text("Open Animation Page"),),

            SizedBox(
              width: 50,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}


