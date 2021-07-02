import 'package:flutter/material.dart';
import 'package:listy/components/grocery_item_checkbox.dart';
import 'package:listy/models/grocery_item.dart';

class GroceryItemCard extends StatelessWidget {
  final GroceryItem groceryItem;

  const GroceryItemCard({Key? key, required this.groceryItem})
      : super(key: key);

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
                  groceryItem.name,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                    color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(groceryItem.categoryLabel),
                    )),
              ],
            ),
            GroceryItemCheckbox(
              groceryItem: groceryItem,
            ),
          ],
        ),
      ),
    );
  }
}
