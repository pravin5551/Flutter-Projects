import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'Model/constants.dart';
import 'Model/states_info.dart';

class HomeBackup extends StatefulWidget {
  @override
  _HomeBackupState createState() => _HomeBackupState();
}

int age = 15;
int weight = 50;
int height = 140;
bool isMale = true;

int maleSelected = 1;
int femaleSelcted = 0;
var selectedGender = [Colors.black, Color(0XFF02C56B)];

class _HomeBackupState extends State<HomeBackup> {
  List<Widget> stateList = [];

  void initialRequest() async {
    print("Loading Data");

    var url = Uri.parse(MyConstants.HOST_URL);
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      var jsondData = convert.jsonDecode(response.body) as List<dynamic>;

      jsondData.forEach((element) {
        var model = StatesInfo.fromJson(element);
        print(model.state);
        setState(() {
          stateList.add(stateCard(model.state, model.name));
        });
      });
    }
  }

  Widget stateCard(var stateCode, var stateName) {
    print('Showing State $stateName');

    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        print('Clicked on $stateName ');
                        Navigator.pushNamed(context, MyConstants.STATE_DETAILS,
                            arguments: stateCode);
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0XFF02C56B)),
                    ),
                    child: Text(
                      ' $stateName ',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    ' Name : $stateName',
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      stateList.clear();
      initialRequest();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'USA Covid-19 Status',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
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
          ),
          IconButton(
            icon: Icon(
              Icons.home,
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
      body: Column(
        children: [
          ListView(
            children: stateList,
          ),
        ],
      ),
    );
  }
}
