import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'Model/constants.dart';
import 'Model/states_info.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {


  List<Widget> stateList = [];

  Future initialRequest() async {
    print("Loading Data");

    var url = Uri.parse(MyConstants.HOST_URL);
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      var jsondData = convert.jsonDecode(response.body) as List<dynamic>;

      stateList.clear();

      jsondData.forEach((i) {
        var model = StatesInfo.fromJson(i);
        print(model.state);
        setState(() {
          stateList.add(stateCard(model.state, model.name));
        });
      });
    }
  }

  Widget stateCard(var stateCode, var stateName) {
    print('Showing State $stateName');

    return Row(
        children: [
          Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    print('Clicked on $stateName ');
                    Navigator.pushNamed(context, MyConstants.STATE_DETAILS, arguments: stateCode);
                  });
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0XFF02C56B)),
                ),
                child: Text(
                  ' $stateCode | $stateName ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),

        ],
    );


  }

  @override
  void initState() {
    super.initState();
    setState(() {
      stateList.clear();
      initialRequest();
    });

    stateList.add(stateCard("Loading", "Please Wait"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Corona Status',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          Icon(
            Icons.history,
            color: Colors.blueAccent,
            size: 30.0,
          ),
          IconButton(
            icon: Icon(
              Icons.sync,
              color: Colors.blueAccent,
            ),
            onPressed: () {
              stateList.clear();
              initialRequest();
              // do something
            },
          )
        ],
      ),
      body: Container(
        child: ListView(
          children: stateList,
        ),
      ),
    );
  }
}
