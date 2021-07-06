import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nev_assign_questions/result.dart';



class ThirdScreen extends StatelessWidget {
  TextEditingController textFieldController = TextEditingController();

  final second_ans;
  final home_ans;
  ThirdScreen({@required this.second_ans, @required this.home_ans});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text("India Independents year"),

      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(58.0),
              child: SizedBox(
                child: Text("1 . 1947      " +" "
                    "2. 1949 "),
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
                    MaterialPageRoute(builder: (context) => ResultSceern(home_ans :home_ans,second_ans: second_ans, third_ans:name_entered)),
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