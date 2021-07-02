import 'package:flutter/material.dart';
import 'package:listy/models/grocery_item.dart';

class GroceryItemCheckbox extends StatefulWidget {
  final GroceryItem groceryItem;

  const GroceryItemCheckbox({Key? key, required this.groceryItem})
      : super(key: key);

  @override
  _GroceryItemCheckboxState createState() => _GroceryItemCheckboxState();
}

class _GroceryItemCheckboxState extends State<GroceryItemCheckbox> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(widget.groceryItem.purchased
          ? Icons.check_box_outlined
          : Icons.check_box_outline_blank),
      onPressed: () {
        widget.groceryItem.purchased = !widget.groceryItem.purchased;
        setState(() {});
      },
    );
  }
}
