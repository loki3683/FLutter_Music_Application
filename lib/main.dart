import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {

  void playSound(int soundNumber)
  {
    final audioPlayer = AudioCache() ;
    audioPlayer.play('note$soundNumber.wav');
    print('1 clicked!');
  }

  Expanded buildKey({Color color, int soundNumber})
  {
    return Expanded(
      child: FlatButton(
        child: Text(' '),
        onPressed: ()
        {
          playSound(soundNumber);
        },
        color: color ,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
            child: Text('Music Lover'),
          ),
        ),
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                  buildKey( color:Colors.pinkAccent, soundNumber:1),
                  buildKey( color:Colors.yellow, soundNumber:2),
                  buildKey( color:Colors.blue, soundNumber:3),
                  buildKey( color:Colors.green, soundNumber:4),
                  buildKey( color:Colors.yellow, soundNumber:5),
                  buildKey( color:Colors.orange, soundNumber:6),
                  buildKey( color:Colors.red, soundNumber:7),
              ],
            ),
        ),
      ),
    );
  }
}
