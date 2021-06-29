import 'package:listy/mocks/grocery_items_mock.dart';
import 'package:listy/models/grocery_item.dart';

class GroceryItemService {
  Future<List<GroceryItem>> list() async {
    final data = groceryItems;
    await Future.delayed(const Duration(microseconds: 300));

    final List<GroceryItem> results = data.map<GroceryItem>((json) => GroceryItem.fromJson(json)).toList();

    return results;
  }
}