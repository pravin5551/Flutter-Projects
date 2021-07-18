import 'package:api_practice_yt/fullapi.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListApi(),
  ));
}

 var jsonRandomPeople;
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Future apicall() async{
    var url = Uri.parse("https://reqres.in/api/users/2");
    http.Response response = await http.get(url);

    if(response.statusCode == 200){
      setState(() {
         jsonRandomPeople = convert.jsonDecode(response.body) as Map<String, dynamic>;
         print(jsonRandomPeople['data']['id']);
      });

    }
  }

  @override
  void initState() {
    apicall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Single Api"),),
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(jsonRandomPeople['data']['email'].toString()),
              SizedBox(
                width: 10,
                height: 10,
              ),
              Image(image: NetworkImage(jsonRandomPeople['data']['avatar']), height: 200, width: 200,),
              SizedBox(
                width: 10,
                height: 10,
              ),
              Text(jsonRandomPeople['data']['first_name'].toString()),
              SizedBox(
                width: 10,
                height: 10,
              ),
              Text(jsonRandomPeople['support']['text'].toString()),
            ],
          ),
        ),
      ),
    );
  }
}
