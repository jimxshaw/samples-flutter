import 'package:flutter/material.dart';
import 'package:magic_8_ball/util/hexcolor.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: HexColor('#673AB7'),
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            centerTitle: true,
            backgroundColor: HexColor('#512DA8'),
          ),
          body: Ball(),
        ),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          print('I got pressed!');
        },
        child: Image.asset('images/ball1.png'),
      ),
    );
  }
}
