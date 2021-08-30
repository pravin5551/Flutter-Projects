import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() {
  runApp(MaterialApp(

    home: Scaffold(
      body: NetworkCall(),
    ),
  ));
}


class NetworkCall extends StatefulWidget {
  const NetworkCall({Key? key}) : super(key: key);

  @override
  _NetworkCallState createState() => _NetworkCallState();
}

class _NetworkCallState extends State<NetworkCall> {
  String value ="20.0";
  // int padding =20;

  String dogImageURL = 'https://images.dog.ceo/breeds/schnauzer-miniature/n02097047_731.jpg';

  double padding = 0.0;

  void getRandomDog() async{

    var url = Uri.parse('https://dog.ceo/api/breeds/image/random');
   http.Response response= await http.get(url);
   if(response.statusCode ==200){
     var jsonData = convert.jsonDecode(response.body) as Map<String, dynamic>;

     print(jsonData['message']);

     setState(() {
       dogImageURL = jsonData['message'];

     });
   }else{

   }


  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getRandomDog();
  }
  @override
  Widget build(BuildContext context) {
   try{
     padding = double.parse(value);
   }catch(e){
     padding = 30.0;
   }

   // getRandomDog();


    return SafeArea(child: Center(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            ElevatedButton(onPressed: (){
              getRandomDog();
            }, child: Text("Button")),
            Expanded(child: Image(
              image: NetworkImage(dogImageURL),
            ))
          ],
        ),
      ),
    )
    );
  }
}


