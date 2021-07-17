import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() {
  runApp(MaterialApp(
    title: "Practice Api",
    home: Scaffold(

      body: ApiPractice(),
    ),
  ));
}

class ApiPractice extends StatefulWidget {
  const ApiPractice({Key? key}) : super(key: key);

  @override
  _ApiPracticeState createState() => _ApiPracticeState();
}

class _ApiPracticeState extends State<ApiPractice> {
  String image = 'https://images.dog.ceo/breeds/chihuahua/n02085620_6399.jpg';
  void randomDog() async{
    var url = Uri.parse('https://dog.ceo/api/breeds/image/random');
    http.Response response = await http.get(url);
    if(response.statusCode ==200){
      var jsonData = convert.jsonDecode(response.body) as Map<String, dynamic>;


      setState(() {
        image = jsonData['message'];
       }
      );
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    randomDog();

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Center(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            ElevatedButton(onPressed: (){
              randomDog();
            }, child: Text("Button")
            ),
            Expanded(child: Image(
              image: NetworkImage(image),
            ))
          ],
        ),
      ),
    ),
    );
  }
}

