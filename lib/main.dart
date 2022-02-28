import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final AudioCache player = new AudioCache();

  Widget createButton(Color color, String note) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          player.play(note);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              createButton(Colors.red, 'note1.wav'),
              createButton(Colors.orange, 'note2.wav'),
              createButton(Colors.yellow, 'note3.wav'),
              createButton(Colors.green, 'note4.wav'),
              createButton(Colors.teal, 'note5.wav'),
              createButton(Colors.blue, 'note6.wav'),
              createButton(Colors.purple, 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }
}
