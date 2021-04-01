import 'package:flutter/material.dart';
import 'package:i_have_money/util/HexColor.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("I Have Money!"),
          backgroundColor: HexColor("#0E7AFE"),
        ),
      ),
    ),
  );
}
