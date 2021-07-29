import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
// var jsonRandomPeople;
Map? mapResponse;
// Map? datResponse;
List? listResponse;

class ListApi extends StatefulWidget {
  const ListApi({Key? key}) : super(key: key);

  @override
  _ListApiState createState() => _ListApiState();
}

class _ListApiState extends State<ListApi> {

  Future apicall() async{
    var url = Uri.parse("https://reqres.in/api/users?page=2");
    http.Response response = await http.get(url);

    if(response.statusCode == 200){
      setState(() {
        mapResponse = json.decode(response.body);
        print(mapResponse!['data']);
        listResponse = mapResponse!['data'];
       },
      );
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apicall();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index){
        return Container(
          child: Column(
            children: [
              Image.network(listResponse![index]['avatar']),
              SizedBox(
                width: 20,
                height: 20,
              ),
              Text(listResponse![index]['last_name'])
            ],
          ),
        );
      },
        itemCount: listResponse == null? 0: listResponse!.length,
      )

    );
  }
}
