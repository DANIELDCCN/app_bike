import 'package:flutter/material.dart';
import 'package:ntaindo/Components/bike_grid_item.dart';
import 'package:ntaindo/Mocks/mocks_bike.dart';
import 'package:ntaindo/Models/bike.dart';
import 'package:ntaindo/Providers/cart_item.dart';
import 'dart:core';

import 'package:ntaindo/app_routes.dart';
import 'package:provider/provider.dart';

class BikeOverviewScreen extends StatefulWidget {
  const BikeOverviewScreen({Key? key}) : super(key: key);

  @override
  _BikeOverviewScreenState createState() => _BikeOverviewScreenState();
}

class _BikeOverviewScreenState extends State<BikeOverviewScreen> {
  final List<Bike> bikes = MOCK_BIKE;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aluguel de Bikes'),
        backgroundColor: Colors.black87,
        actions: [
          IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed(AppRoutes.CART_DETAIL);
              },
              icon: Icon(Icons.directions_bike)),
          Consumer<CartItem>(
            builder: (context, cartItem, _) => Text(cartItem.total.toString()),
          ),
          SizedBox(
            width: 22,
          ),
        ],
      ),
      body: GridView.builder(
        itemCount: bikes.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 3 / 2,

          ),
          itemBuilder: (context, index){
            return BikeGridItem(bikes[index]);
          }
      ),
    );
  }
}
