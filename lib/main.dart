import 'package:flutter/material.dart';
import 'package:ntaindo/Providers/cart_item.dart';
import 'package:ntaindo/Providers/cart_provider.dart';
import 'package:ntaindo/Screens/bike_details_screen.dart';
import 'package:ntaindo/Screens/bikes_overview_screen.dart';
import 'package:ntaindo/Screens/cart_detail_screen.dart';
import 'package:ntaindo/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CartProvider(
      child: ChangeNotifierProvider(
        create: (context) => CartItem(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: BikeOverviewScreen(),
          routes: {
            AppRoutes.BIKE_DETAIL: (context) => BikeDetailsScreen(),
            AppRoutes.CART_DETAIL: (context) => CartDetailScreen(),
          },
        ),
      ),
    );
  }
}
