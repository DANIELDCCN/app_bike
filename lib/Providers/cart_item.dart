import 'package:flutter/material.dart';
import 'package:ntaindo/Models/bike.dart';

class CartItem with ChangeNotifier{
  List<Bike> _bikes = [];
  List<Bike> get bikes => [..._bikes];//está fazendo um clone de bikes

  int get total => _bikes.length;

  void addBike(Bike bike){
    _bikes.add(bike);
    notifyListeners();
  }

  void removeBike(Bike bike){
    _bikes.remove(bike);
    notifyListeners();
  }
}