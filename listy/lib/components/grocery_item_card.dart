import 'package:flutter/material.dart';
import 'package:listy/models/grocery_item.dart';

class GroceryItemCard extends StatefulWidget {
  final GroceryItem groceryItem;

  const GroceryItemCard({Key? key, required this.groceryItem})
      : super(key: key);

  @override
  _GroceryItemCardState createState() => _GroceryItemCardState();
}

class _GroceryItemCardState extends State<GroceryItemCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  widget.groceryItem.name,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                    color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.groceryItem.categoryLabel),
                    )),
              ],
            ),
            IconButton(
              icon: Icon(Icons.check_box_outline_blank),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
