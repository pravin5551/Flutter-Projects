import 'package:flutter/material.dart';
import 'package:music_flutter/piano_player.dart';





void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "AudioPlayer",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        body: PianoPlayer(),
      ),
    ),
  );
}
