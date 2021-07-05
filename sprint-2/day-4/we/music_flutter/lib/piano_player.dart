
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';


class PianoPlayer extends StatefulWidget {
  @override
  _PianoPlayerState createState() => _PianoPlayerState();
}
class _PianoPlayerState extends State<PianoPlayer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              color: Colors.red,
              onPressed: () {
                final player = AudioCache();
                player.play('note6.wav');
              },child: Text("1"),
            ),
          ),
          Expanded(
            child: FlatButton(
              color: Colors.yellow,
              onPressed: () {
                final player = AudioCache();
                player.play('note6.wav');
              },child: Text("2"),
            ),
          ),
          Expanded(
            child: FlatButton(
              color: Colors.purple,
              onPressed: () {
                final player = AudioCache();
                player.play('note6.wav');
              },child: Text("3"),
            ),
          ),
          Expanded(
            child: FlatButton(
              color: Colors.black,
              onPressed: () {
                final player = AudioCache();
                player.play('note6.wav');
              },child: Text("4"),
            ),
          ),
          Expanded(
            child: FlatButton(
              color: Colors.green,
              onPressed: () {
                final player = AudioCache();
                player.play('note6.wav');
              },child: Text("5"),
            ),
          ),
          Expanded(
            child: FlatButton(
              color: Colors.orange,
              onPressed: () {
                final player = AudioCache();
                player.play('note6.wav');
              },child: Text("6"),
            ),
          ),
          Expanded(
            child: FlatButton(
              color: Colors.cyan,
              onPressed: () {
                final player = AudioCache();
                player.play('note6.wav');
              }, child: Text("7"),
            ),
          ),
        ],
      ),
    );
  }
}