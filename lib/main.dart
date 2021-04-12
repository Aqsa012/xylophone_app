import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

const sounds = [
  'note1.wav',
  'note2.wav',
  'note3.wav',
  'note4.wav',
  'note5.wav',
  'note6.wav',
  'note7.wav',
];

const colours = [
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.green,
  Colors.teal,
  Colors.blue,
  Colors.purple
];

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: buildAllKeys(),
        ),
      ),
    ));
  }

  List<Widget> buildAllKeys() {
    List<Widget> keys = [];
    for (var i = 0; i < sounds.length; i++) {
      keys.add(
        Expanded(
          child: FlatButton(
            color: colours[i],
            onPressed: () {
              final AudioCache player = new AudioCache();
              player.play(sounds[i]);
            },
          ),
        ),
      );
    }
    return keys;
  }
}
