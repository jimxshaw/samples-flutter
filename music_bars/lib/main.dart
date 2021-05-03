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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  playSound(1);
                },
                child: Text(''),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.purple,
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound(2);
                },
                child: Text(''),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.indigo,
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound(3);
                },
                child: Text(''),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound(4);
                },
                child: Text(''),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound(5);
                },
                child: Text(''),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.yellow,
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound(6);
                },
                child: Text(''),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound(7);
                },
                child: Text(''),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
