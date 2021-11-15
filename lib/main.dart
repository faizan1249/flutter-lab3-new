import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(Xylophone());
}
class Xylophone extends StatelessWidget {
  AudioCache audioCache = AudioCache();
  AudioPlayer audioPlayer = AudioPlayer();
  Widget createStrips(index)
  {
    return Expanded(
      child: TextButton(onPressed: (){
        audioCache.play('note$index.wav');
      },
        child: Text(''),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) =>
          colors[index-1]),
        ),
      ),
    );
  }


  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.purple,
    Colors.blue,
    Colors.amberAccent,
    Colors.yellow,
    Colors.blueAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
             for(int i=1; i<=7; i++)
               createStrips(i)
            ],
          ),
        ),
      ),
    );
  }
}
