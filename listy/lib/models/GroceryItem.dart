class GroceryItem {
  int? id;
  String? name;
  // category
  bool purchased = false;

  GroceryItem.fromJason(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.purchased = json['purchased'];
  }
}