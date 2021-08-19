import 'package:flutter/material.dart';
import 'package:groceryl/core/model/grocery.dart';
import 'package:groceryl/core/model/grocery_item.dart';

enum CartState { normal, cart }

class CartController extends ChangeNotifier {
  CartState cartState = CartState.normal;

  List<GroceryItem> cart = [];

  void changeHomeState(CartState state) {
    cartState = state;
    notifyListeners();
  }

  void addGroceryToCart(Grocery grocery) {
    for (GroceryItem item in cart) {
      if (item.grocery.title == grocery.title) {
        item.increment();
        notifyListeners();
        return;
      }
    }
    cart.add(GroceryItem(grocery: grocery));
    notifyListeners();
  }
  void removeGroceryItem(Grocery grocery){
    for(GroceryItem item in cart){
      if(item.grocery.title == grocery.title){
        item.decrement();
        notifyListeners();
        return;
      }
    }
    cart.remove(GroceryItem(grocery: grocery));
    notifyListeners();
  }

  int totalCartItems() => cart.fold(
      0, (previousValue, element) => previousValue + element.quantity);
}