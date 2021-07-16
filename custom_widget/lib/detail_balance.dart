import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomeWidget extends StatefulWidget {
  const CustomeWidget({Key? key}) : super(key: key);

  @override
  _CustomeWidgetState createState() => _CustomeWidgetState();
}

class _CustomeWidgetState extends State<CustomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 500,
              height: 100,
              color: Colors.white70,
              child: Stack(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "   Detail Balance",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Image.asset('images/alllines.JPG'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 55, right: 40),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Image.asset('images/credit.JPG'),
                        ),
                        Expanded(
                          child: Image.asset('images/debit.JPG'),
                        ),
                        Expanded(
                          child: Image.asset('images/others.JPG'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50, left: 30),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            "Credit",
                            style: TextStyle(color: Colors.black, fontSize: 13),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Debit",
                            style: TextStyle(color: Colors.black, fontSize: 13),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Others",
                            style: TextStyle(color: Colors.black, fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 100, left: 35),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            "1400",
                            style: TextStyle(color: Colors.black, fontSize: 13),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "${400}",
                            style: TextStyle(color: Colors.black, fontSize: 13),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "${200}",
                            style: TextStyle(color: Colors.black, fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 3,
              color: Colors.blue,
            ),

            SizedBox(
              height: 50,
              width: 50,
            ),

        Container(
          width: 500,
          height: 100,
          color: Colors.white60,
          child: Stack(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Image.asset('images/up.JPG'),
                  ),
                  Expanded(
                    child: Text("Income"),
                  ),
                  Row(
                    children: <Widget>[
                      Text("5,900"),
                    ],
                  ),
                  Expanded(
                    child: Image.asset('images/down.JPG'),
                  ),
                  Expanded(
                    child: Text("Expense"),
                  ),
                  Row(
                    children: [Text("2,540")],
                  ),
                ],
              ),
            ],
          ),
        ),
            Divider(
              height: 3,
              color: Colors.red,
            ),

            SizedBox(
              height: 50,
              width: 50,
            ),

            Image.asset(
              'images/grap.png',
              width: 500,
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
