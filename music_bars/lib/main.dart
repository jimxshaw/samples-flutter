import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MusicBarsApp());
}

class MusicBarsApp extends StatelessWidget {
  const MusicBarsApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () {},
              child: Text('Click me!'),
            ),
          ),
        ),
      ),
    );
  }
}
