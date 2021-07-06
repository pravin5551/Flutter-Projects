

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nev_assign_questions/third.dart';

class SecondScreen extends StatelessWidget {
  TextEditingController textFieldController = TextEditingController();

  final home_ans;
  SecondScreen({@required this.home_ans});


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text("Name of Masai Funder?"),

      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(58.0),
              child: SizedBox(
                child: Text("1 . Prateek Shukla      " +" "
                    "2. Vijay Shekhar Sharma "),
              ),
            ),
            TextField(
              controller: textFieldController,
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(38.0),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate back to first route when tapped.
                  var name_entered = textFieldController.text;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdScreen(home_ans :home_ans,second_ans: name_entered)),
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

}

