import 'package:flutter/material.dart';
import 'util/hexcolor.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: HexColor('#7FBA00'),
        appBar: AppBar(
          title: Text('Dice Toss'),
          backgroundColor: HexColor('#7FBA00'),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(image: AssetImage('images/dice1.png'))
      ],
    );
  }
}