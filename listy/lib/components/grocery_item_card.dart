import 'package:flutter/material.dart';
import 'package:listy/models/grocery_item.dart';

class GroceryItemCard extends StatelessWidget {
  final GroceryItem groceryItem;

  const GroceryItemCard({Key? key, required this.groceryItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(groceryItem.name),
    );
  }
}
