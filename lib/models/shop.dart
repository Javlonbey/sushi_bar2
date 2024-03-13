import 'package:flutter/material.dart';
import 'package:sushi_bar2/models/food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
      name: "Salmon Sushi",
      price: "21.00",
      imagePath: "assets/images/YY.png",
      rating: "4.9",
    ),
    Food(
      name: "Pepperoni Pizza",
      price: "23.00",
      imagePath: "assets/images/LL.jpg",
      rating: "4.3",
    ),
    Food(
      name: "Pizza Pineapple",
      price: "19.03",
      imagePath: "assets/images/SS.png",
      rating: "3.5",
    ),
    Food(
      name: "Bonito Sushi Rolls",
      price: "25.01",
      imagePath: "assets/images/PP.png",
      rating: "2.8",
    ),
  ];
  List<Food> _cart = [];
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;
  void addToCart(Food foodItem, int guantity) {
    for (int i = 0; i < guantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
