import 'package:groceryl/core/model/grocery.dart';

class GroceryItem {
  int quantity;
  final Grocery grocery;

  GroceryItem({this.quantity = 1, required this.grocery});

  void increment() {
    quantity++;
  }
  void decrement(){
    quantity--;
  }

}