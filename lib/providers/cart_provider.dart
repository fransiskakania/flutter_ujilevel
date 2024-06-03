import 'package:flutter/foundation.dart';

class CartProvider with ChangeNotifier {
  List<int> _itemCounts = [1, 1, 1];

  List<int> get itemCounts => _itemCounts;

  void incrementItem(int index) {
    _itemCounts[index]++;
    notifyListeners();
  }

  void decrementItem(int index) {
    if (_itemCounts[index] > 1) {
      _itemCounts[index]--;
      notifyListeners();
    }
  }

  int get subTotal => _itemCounts.reduce((value, element) => value + element) * 28;
}
