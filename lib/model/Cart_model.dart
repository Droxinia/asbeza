import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //the list of items that are on sell
  final List _shopItems = [
    ['Cabbage', '1 killo', '30 ', 'assets/cabbage.jpg'],
    ['Carrots', '1 killo', '25 ', 'assets/carrot.jpg'],
    ['Corn', '1 corn', '15', 'assets/corn.jpg'],
    ['cucumber', '1 killo', '37 ', 'assets/cucumber.jpg'],
    ['Egg plant', '1 killo', '35 ', 'assets/eggplant.jpg'],
    ['Onion', '1 killo', '30 ', 'assets/onion.jpg'],
    ['potatoe', '1 killo', '22 ', 'assets/potatoe.jpg'],
    ['Zuccuni', '1 killo', '40 ', 'assets/zuccuni.jpg'],
    ['Butter', '1 killo', '40 ', 'assets/butter.jpg'],
    ['Cheese', '1 killo', '40 ', 'assets/cheese.jpg'],
    ['Mango', '1 killo', '40 ', 'assets/mango.jpg'],
    ['Avocado', '1 killo', '40 ', 'assets/Avocado.jpg'],
    ['Orange', '1 killo', '40 ', 'assets/orange.jpg'],
    ['Apple', '1 killo', '40 ', 'assets/apple.jpg'],
    ['EGG', '1 egg', '40 ', 'assets/egg.jpg'],
    ['Chicken', '1 Chicken', '390 ', 'assets/chicken.jpg'],
    ['Fish', '1 Fish', '140 ', 'assets/fish.jpg'],
    ['Sliced Bread', '1 bread', '6 ', 'assets/sliced_bread.jpg'],
    ['Burrger bread', '1 killo', '40 ', 'assets/burrger_bread.jpg'],
    ['Minced meat', '1 killo', '40 ', 'assets/minced_meat.jpg'],
    ['Mirinda', '1 Mirinda', '25', 'assets/mirinda.jpg']
  ];
  final List _cartitems = [];
  get shopItems => _shopItems;
  get cartitems => _cartitems;

  void additemtocart(int index) {
    _cartitems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartitems.removeAt(index);
    notifyListeners();
  }

  String calculatetotal() {
    double totalprice = 0;
    for (int i = 0; i < _cartitems.length; i++) {
      totalprice += num.parse(_cartitems[i][2]);
    }

    return totalprice.toStringAsFixed(2);
  }
}
