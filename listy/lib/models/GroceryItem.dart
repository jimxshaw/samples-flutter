enum Category {
  Produce,
  Bakery,
  Dairy,
  Frozen,
  Aisle,
  Meat,
  Household,
  Misc,
}

class GroceryItem {
  int? id;
  String? name;
  Category? category;
  bool purchased = false;

  GroceryItem.fromJason(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.category = json['category'];
    this.purchased = json['purchased'];
  }
}