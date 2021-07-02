import 'package:flutter/material.dart';
import 'package:listy/components/grocery_item_card.dart';
import 'package:listy/mocks/grocery_items_mock.dart';
import 'package:listy/models/grocery_item.dart';
import 'package:listy/services/grocery_item_service.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {

  List<GroceryItem> _items = [];

  @override
  void initState() {
    super.initState();

    _init();
  }

  Future<void> _init() async {
    final items = await groceryItemService.list();

    setState(() {
      _items = items;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("My list"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            final item = _items[index];

            return GroceryItemCard(groceryItem: item);
          }),
    );
  }
}
