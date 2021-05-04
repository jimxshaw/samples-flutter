import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MusicBarsApp());
}

class MusicBarsApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(int soundNumber, MaterialColor color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''),
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.purple),
              buildKey(2, Colors.indigo),
              buildKey(3, Colors.blue),
              buildKey(4, Colors.green),
              buildKey(5, Colors.yellow),
              buildKey(6, Colors.orange),
              buildKey(7, Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
