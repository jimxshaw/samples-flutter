import 'package:flutter/material.dart';
import 'util/hexcolor.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: HexColor('#7FBA00'),
        appBar: AppBar(
          title: Text('Dice Toss'),
          centerTitle: true,
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
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {  },
              child: Image.asset('images/dice1.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {  },
              child: Image.asset('images/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
