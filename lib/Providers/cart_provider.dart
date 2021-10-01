import 'package:flutter/material.dart';
import 'package:ntaindo/Models/bike.dart';
import 'package:ntaindo/Providers/cart_item.dart';


class CartProvider extends InheritedWidget{
  final CartItem cart = CartItem();

  CartProvider({required Widget child}): super(child:child);
  static CartProvider? of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<CartProvider>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}



























