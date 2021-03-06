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

const GroceryItemCategoryMap = {
  Category.Produce: "produce",
  Category.Bakery: "bakery",
  Category.Dairy: "dairy",
  Category.Frozen: "frozen",
  Category.Aisle: "aisle",
  Category.Meat: "meat",
  Category.Household: "household",
  Category.Misc: "misc",
};

class GroceryItem {
  int? id;
  String name = "";
  Category? category;
  bool purchased = false;

  GroceryItem.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.category = json['category'] != null ? GroceryItem.getCategoryFromString(json['category']) : Category.Misc;
    this.purchased = json['purchased'];
  }

  get categoryLabel {
    if (this.category == null) {
      return "-";
    }

    return GroceryItem.getStringFromCategory(this.category!);
  }

  static Category getCategoryFromString(String category) {
    return GroceryItemCategoryMap.entries
                                 .firstWhere((element) => element.value == category)
                                 .key;
  }

  static String? getStringFromCategory(Category category) {
    return GroceryItemCategoryMap[category];
  }
}