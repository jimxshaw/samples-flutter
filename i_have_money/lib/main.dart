import 'package:flutter/material.dart';
import 'package:i_have_money/util/HexColor.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('I Have Money!'),
          backgroundColor: HexColor('#0E7AFE'),
        ),
        backgroundColor: HexColor('#7D7D7D'),
        body: Image(
          image: NetworkImage(
              'https://thejewelerblog.files.wordpress.com/2017/07/carmenlucia2.jpg'),
        ),
      ),
    ),
  );
}
