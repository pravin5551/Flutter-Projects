import 'dart:core';
import 'dart:math';
import 'package:flutter/material.dart';


class TripsPage extends StatefulWidget {
  @override
  _TripsPageState createState() => _TripsPageState();
}

class _TripsPageState extends State<TripsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Center(
          child: Column(

            children: [
              Text(
                'Trips',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              Hero(
                tag: 'image',
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Expanded(

                    child:Image.asset("assets/sea.jpg",  width: 400, height: 300,),
                  )
                ),
              ),

              Row(
                children: [

                  Expanded(
                    child: Center(

                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: 300,
                            child: Text("My trip to Kaula Lampur", style: TextStyle(fontSize: 20, color: Colors.black, fontStyle: FontStyle.italic),),
                          ),
                          SizedBox(height: 8,
                            width: 20,),
                          Row(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Icon(
                                  Icons.location_on,
                                  color: Colors.blueAccent,
                                  size: 30.0,
                                ),
                              ),
                              SizedBox(height: 18,
                                width: 20,),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("Nice, France", style: TextStyle(color: Colors.black, fontSize: 15),)
                              )
                            ],
                          ),

                          // buildAddressRating(location: location),
                          SizedBox(height: 12),
                          Row(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Icon(
                                  Icons.calendar_today_rounded,
                                  color: Colors.blueAccent,
                                  size: 30.0,
                                ),
                              ),
                              SizedBox(height: 18,
                                width: 20,),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("Sat, 13 July", style: TextStyle(color: Colors.black, fontSize: 15),)
                              )
                            ],
                          ),
                          SizedBox(height: 12),
                          Row(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Icon(
                                  Icons.calendar_today_outlined,
                                  color: Colors.blueAccent,
                                  size: 30.0,
                                ),
                              ),
                              SizedBox(height: 18,
                                width: 20,),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("Mon, 15 July", style: TextStyle(color: Colors.black, fontSize: 15),)
                              )
                            ],
                          ),
                          SizedBox(height: 8),
                          Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(5),
                            child: SizedBox(
                                height: 40,
                                width: 490,
                                child: ElevatedButton(
                                  onPressed: (){
                                    Navigator.pushNamed(
                                        context, '/');
                                  },
                                  child: Text("CHECK OUT", style: TextStyle(color: Colors.white, fontSize: 20),),
                                ),
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
