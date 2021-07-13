

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nev_assign_questions/secon.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController textFieldController = TextEditingController();


  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text('Who is Indias Prime Minister ?'),

      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(58.0),
              child: SizedBox(
                child: Text("1 . Manmohan Singh      " +" "
                    "2. Narendra  Godi "),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textFieldController,
                autofocus: true,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(38.0),
              child: ElevatedButton(
                onPressed: () {
                  var name_entered = textFieldController.text;
                  print("Name = $name_entered");
                  // Navigate back to first route when tapped.
                  _sendDataBack(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen(home_ans: name_entered)),
                  );
                },
                child: Text('Next Question'),
              ),
            ),
          ],
        ),
      ),

    );

  }
  void _sendDataBack(BuildContext context) {
    String textToSendBack = textFieldController.text;
    Navigator.pop(context, textToSendBack);
  }
}