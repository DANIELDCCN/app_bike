import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ntaindo/Models/bike.dart';
import 'package:ntaindo/Providers/cart_item.dart';
import 'package:provider/provider.dart';

class BikeDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Bike bike = ModalRoute.of(context)!.settings.arguments as Bike;
    var cartProvider = Provider.of<CartItem>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('${bike.nome}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              image: CachedNetworkImageProvider(bike.imagemURL),
              fit: BoxFit.cover,
            ),
            Text(
              '${bike.nome}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        text: '${bike.descricao}',
                        style: TextStyle(color: Colors.black, fontSize: 16))),
              ),
            ),
            ElevatedButton.icon(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black87,)
              ),
                onPressed: (){
                  cartProvider.addBike(bike);
                },
                icon: Icon(Icons.shopping_cart),
                label: Text('Alugar!'))
          ],
        ),
      ),
    );
  }
}
