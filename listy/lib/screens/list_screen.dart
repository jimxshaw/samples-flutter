import 'package:flutter/material.dart';
import 'package:listy/mocks/grocery_items_mock.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = groceryItems;

    return Scaffold(
      appBar: AppBar(
        title: Text("My list"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

            return Card(
              child: Text(item['name']),
            );
          }),
    );
  }
}
