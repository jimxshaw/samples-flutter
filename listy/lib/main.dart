import 'package:flutter/material.dart';
import 'package:listy/screens/list_screen.dart';
import 'package:listy/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: ThemeColors.primary,
      ),
      home: ListScreen(),
    );
  }
}