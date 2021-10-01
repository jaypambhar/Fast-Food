import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:login_app/models/food_items.dart';

class CardModel extends ChangeNotifier {
  final List<FoodItems> _items = [];
  UnmodifiableListView<FoodItems> get items => UnmodifiableListView(_items);
  num get totalPrice {
    num count = 0;
    _items.forEach((element) {
      count += element.price ?? 0;
    });
    return count;
  }

  List<FoodItems> get getItems => _items;
  void add(FoodItems item) {
    _items.add(item);
    notifyListeners();
  }

  void remove(FoodItems item) {
    _items.add(item);
    notifyListeners();
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }
}
