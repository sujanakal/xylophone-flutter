import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

Expanded buildNoteKey({MaterialColor color, int noteNumber}) {
  return Expanded(
    child: TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
      ),
      onPressed: () {
        playSound(noteNumber);
      },
    ),
  );
}

void playSound(noteNumber) {
  AudioCache cache = new AudioCache();
  cache.play('note$noteNumber.wav');
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildNoteKey(color: Colors.deepPurple, noteNumber: 1),
              buildNoteKey(color: Colors.indigo, noteNumber: 2),
              buildNoteKey(color: Colors.lightBlue, noteNumber: 3),
              buildNoteKey(color: Colors.lightGreen, noteNumber: 4),
              buildNoteKey(color: Colors.yellow, noteNumber: 5),
              buildNoteKey(color: Colors.orange, noteNumber: 6),
              buildNoteKey(color: Colors.red, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
