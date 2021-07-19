import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lottie/lottie.dart';
import 'dart:convert' as convert;
import 'Model/constants.dart';

class StateDetails extends StatefulWidget {
  @override
  _StateDetailsState createState() => _StateDetailsState();
}

// StateStatistics stDetails = StateStatistics(0, 0, 0, '');
int? positive;
int? negative;
int? death;
String? dateChecked;

String loadingStatus = ' Details Loading ...';

class _StateDetailsState extends State<StateDetails> {

  void getCasesDetails(var stateCode) async {

    print("Loading Data");

    var url = Uri.parse(MyConstants.STATE_URL +  stateCode +  MyConstants.STATE_END_POINT);
    http.Response response = await http.get(url);


    if (response.statusCode == 200) {

      print("Response for  $stateCode is ${response.body} ");

      var jsondData = convert.jsonDecode(response.body) as Map<String, dynamic>;

      setState(() {
        positive = jsondData["positive"];
        negative = jsondData["negative"];
        death = jsondData["death"];
        dateChecked = jsondData["dateChecked"];

        loadingStatus = 'State Details';

      });

    }
  }


  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
    super.dispose();
   positive = 0;
   negative = 0;
   death = 0;
   dateChecked = '';
    loadingStatus = ' Details Loading ...';
  }

  @override
  Widget build(BuildContext context) {

    var stateCode = ModalRoute.of(context)!.settings.arguments as String;

    print('Recieved State $stateCode');

    getCasesDetails(stateCode);

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          '$stateCode Details ',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          Icon(
            Icons.sync,
            color: Colors.red,
            size: 30.0,
          ),
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.green,
            ),
            onPressed: () {
              // do something
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Container(
                margin: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    "$stateCode $loadingStatus ",
                    style: TextStyle(color: Colors.black, fontSize: 20,),
                  ),
                ),
              ),
            ),
            // Center(child: Lottie.network(MyConstants.CORONA_ANIMATION)),
            Container(
              margin: EdgeInsets.all(10),
              child: Container(
                margin: EdgeInsets.all(5),
                child: Card(
                  color: Colors.white,
                  elevation: 10,
                  shadowColor: Colors.grey,
                  child: Center(
                    child: Text(
                      '+ Ve :  ${positive} | - Ve :  ${negative}  ',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Container(
                margin: EdgeInsets.all(5),
                child: Card(
                  color: Colors.white,
                  elevation: 10,
                  shadowColor: Colors.grey,
                  child: Center(
                    child: Text(
                      'Total Deaths : ${death} ',
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Container(
                margin: EdgeInsets.all(5),
                child: Card(
                  color: Colors.white,
                  elevation: 10,
                  shadowColor: Colors.grey,
                  child: Center(
                    child: Text(
                      'Date :  ${dateChecked} ',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
