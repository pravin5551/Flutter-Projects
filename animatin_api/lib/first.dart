import 'package:animatin_api/secon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_widget.dart';



class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> with SingleTickerProviderStateMixin{
   AnimationController? controller;
   double? value = 5.0;
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(vsync: this, duration: Duration(seconds: 5));
    var curve = CurvedAnimation(parent: controller!, curve: Curves.decelerate);
    controller?.forward();
    controller?.addListener(() {
      setState(() {
        value = controller!.value;
        // print('inside Animation controller ${controller?.value}');
        print(curve.value);
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.withOpacity(controller!.value),
      appBar: AppBar(
        title: Text('Page One'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyWidgetApp(color1: Colors.red, color2: Colors.yellow, color3: Colors.pink, child: Text("Hello")),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/second');
            }, child: Text("Nevigate",    style: TextStyle(fontSize: value! * 20),)),
            SizedBox(
              height: 25,
              width: 100,
            ),
            Hero(
              tag: 'image',
              child: Container(
                child: Image(
                  image: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
