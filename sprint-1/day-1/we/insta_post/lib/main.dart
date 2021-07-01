
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Evaluation Screen",
              style: TextStyle(color: Colors.black, fontSize: 30)),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'images/dp.png',
                    width: 120,
                    height: 122,
                  ),
                ),

                Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 20)),
                            Padding(padding: EdgeInsets.only(top: 40)),
                            Text("Pravin Pawar",  style: TextStyle(
                                fontSize: 50, color: Colors.black, fontWeight: FontWeight.bold),
                            ),

                          ],
                        ),
                      ],
                    )),

              ],
            ),

            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                Padding(padding: EdgeInsets.only(top: 40)),
                Text("7757886309"),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                Padding(padding: EdgeInsets.only(top: 40)),
                Text("pravinvpawar5551@gmail.com"),
              ],
            ),
            Divider(
              height: 10,
              color: Colors.black,
            ),
            Column(
              children: <Widget>[
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 100)),
                    Padding(padding: EdgeInsets.only(top: 100)),
                    Text("Your Fevorite",style: TextStyle(
                        fontSize: 25, color: Colors.orange, fontWeight: FontWeight.bold), ),
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 100)),
                    Padding(padding: EdgeInsets.only(top: 100)),
                    Text("Payment",style: TextStyle(
                        fontSize: 25, color: Colors.red, fontWeight: FontWeight.bold),),
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 100)),
                    Padding(padding: EdgeInsets.only(top: 100)),
                    Text("Tell your Friends",style: TextStyle(
                        fontSize: 25, color: Colors.blue, fontWeight: FontWeight.bold), ),
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 100)),
                    Padding(padding: EdgeInsets.only(top: 100)),
                    Text("Promotions",style: TextStyle(
                        fontSize: 25, color: Colors.green, fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
