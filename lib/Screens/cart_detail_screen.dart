import 'package:flutter/material.dart';
import 'package:ntaindo/Models/bike.dart';
import 'package:ntaindo/Providers/cart_item.dart';
import 'package:ntaindo/Providers/cart_provider.dart';
import 'package:provider/provider.dart';

class CartDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cartProvider = Provider.of<CartItem>(context);
    final List<Bike> bikes = Provider.of<CartItem>(context).bikes;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Rezistro de Alugueis'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  trailing: GestureDetector(
                    onTap: (){
                      cartProvider.removeBike(bikes[index]);
                    },
                      child: Icon(Icons.remove_shopping_cart_rounded)),
                  title: Text('${bikes[index].nome}'),
                );
              },
              separatorBuilder: (context, int index) => const Divider(),
              itemCount: bikes.length,
            ),
            ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.black87,)
                ),
                onPressed: (){

                },
                icon: Icon(Icons.shopping_cart),
                label: Text('Finalizar!'))
          ],
        ),
      ),
    );
  }
}
