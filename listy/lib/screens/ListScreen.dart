import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My list"),
      ),
    );
  }
}
