import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["avocado", "4.00", "lib/asset/avocado.png", Colors.green.shade100],
    ["watermelon", "2.00", "lib/asset/watermelon.png", Colors.red.shade100],
    ["water", "3.00", "lib/asset/water.png", Colors.blue.shade100],
    ["watermelon", "4.00", "lib/asset/watermelon.png", Colors.green.shade100],
  ];
  List _cartItems = [];
  get shopItems => _shopItems;
  get cartItems => _cartItems;
  void addItemCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String CalcultateTotal() {
    double TotalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      TotalPrice += double.parse(_cartItems[i][1]);
    }
    return TotalPrice.toStringAsFixed(2);
  }
}
