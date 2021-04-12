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
const colours1 = [
  Colors.teal,
  Colors.orange,
  Colors.blue,
  Colors.yellow,
  Colors.red,
  Colors.green,
  Colors.purple
];

Color c1, c2, c3, c4, c5, c6, c7;

void main() => runApp(HomeScreen());

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(num1);
        },
      ),
    );
  }

  final titleController = TextEditingController();

  String text = "No Value Entered";
  String _textString = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          body: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildKey(color: Colors.orange, soundNumber: num1),
                  buildKey(color: Colors.lightGreenAccent, soundNumber: num2),
                  buildKey(color: Colors.pink, soundNumber: num3),
                  buildKey(color: Colors.blueAccent, soundNumber: num4),
                  buildKey(color: Colors.yellowAccent, soundNumber: num5),
                  buildKey(color: Colors.redAccent, soundNumber: num6),
                  buildKey(color: Colors.purple, soundNumber: num7),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 15,
                    width: 5,
                  ),
                  TextField(
                    //                     <--- TextField
                    maxLength: 7,
                    onChanged: (text) {
                      _doSomething(text);
                    },
                  ),
                  SizedBox(
                    height: 20,
                    width: 5,
                  ),
                  TextField(
                    //                       <--- TextField
                    maxLength: 7,

                    onChanged: (text2) {
                      _doSomething2(text2);
                    },
                  ),
                  SizedBox(
                    height: 20,
                    width: 5,
                  ),
                  TextField(
                    //                     <--- TextField
                    maxLength: 7,
                    onChanged: (text3) {
                      _doSomething(text3);
                    },
                  ),
                  SizedBox(
                    height: 20,
                    width: 5,
                  ),
                  TextField(
                    //                       <--- TextField
                    maxLength: 7,

                    onChanged: (text4) {
                      _doSomething2(text4);
                    },
                  ),
                  SizedBox(
                    height: 20,
                    width: 5,
                  ),
                  TextField(
                    //                     <--- TextField
                    maxLength: 7,
                    onChanged: (text5) {
                      _doSomething(text5);
                    },
                  ),
                  SizedBox(
                    height: 20,
                    width: 5,
                  ),
                  TextField(
                    //                       <--- TextField
                    maxLength: 7,

                    onChanged: (text6) {
                      _doSomething2(text6);
                    },
                  ),
                  SizedBox(
                    height: 20,
                    width: 5,
                  ),
                  TextField(
                    //                     <--- TextField
                    maxLength: 7,
                    onChanged: (text7) {
                      _doSomething(text7);
                    },
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  int num1, num2, num3, num4, num5, num6, num7;
  void _doSomething(String text) {
    setState(() {
      _textString = text;
      int num = int.parse(_textString);
      num1 = num;
    });
  }

  void _doSomething2(String text2) {
    setState(() {
      _textString = text2;
      int num = int.parse(_textString);
      num2 = num;
    });
  }

  void _doSomething3(String text3) {
    setState(() {
      _textString = text3;
      int num = int.parse(_textString);
      num3 = num;
    });
  }

  void _doSomething4(String text4) {
    setState(() {
      _textString = text4;
      int num = int.parse(_textString);
      num4 = num;
    });
  }

  void _doSomething5(String text5) {
    setState(() {
      _textString = text5;
      int num = int.parse(_textString);
      num5 = num;
    });
  }

  void _doSomething6(String text6) {
    setState(() {
      _textString = text6;
      int num = int.parse(_textString);
      num6 = num;
    });
  }

  void _doSomething7(String text7) {
    setState(() {
      _textString = text7;
      int num = int.parse(_textString);
      num7 = num;
    });
  }
}
