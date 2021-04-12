import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:xylophone_app/X.dart';

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

class SecondScreen extends StatelessWidget {
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

//
//Widget buildPianoKey({colour: Color, sound: String}) {
//  return Expanded(
//    child: GestureDetector(
//      child: Container(
//        color: colour,
//      ),
//      onTap: () {
//        playSound(sound);
//      },
//    ),
//  );
//}

//class PianoKey extends StatelessWidget {
//  PianoKey({this.colour, this.sound});
//  final Color colour;
//  final String sound;
//
//  void playSound() {
//    final AudioCache player = new AudioCache();
//    final soundFile = this.sound + '.wav';
//    player.play(soundFile);
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Expanded(
//      child: GestureDetector(
//        child: Container(
//          margin: EdgeInsets.all(10.0),
//          color: this.colour,
//        ),
//        onTap: () {
//          playSound();
//        },
//      ),
//    );
//  }
//}
