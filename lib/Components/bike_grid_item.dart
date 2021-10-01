import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ntaindo/Models/bike.dart';
import 'package:ntaindo/Providers/cart_item.dart';
import 'package:ntaindo/app_routes.dart';
import 'package:provider/provider.dart';

class BikeGridItem extends StatelessWidget {
  final Bike bike;
  BikeGridItem(this.bike);

  @override
  Widget build(BuildContext context) {
    var catProvider = Provider.of<CartItem>(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(AppRoutes.BIKE_DETAIL, arguments: bike);
      },
      child: GridTile(
        child: Image(
          image: CachedNetworkImageProvider(bike.imagemURL),
          fit: BoxFit.cover,
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(
            '${bike.nome}',
            style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
            textAlign: TextAlign.left,
          ),
          subtitle: Text(
            '	¥ ${bike.preco}',
            style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
            textAlign: TextAlign.left,
          ),
          trailing: IconButton(
            onPressed: (){
              catProvider.addBike(bike);
              print('${catProvider.total}');
            },
              icon: Icon(Icons.add)),
        ),
      ),
    );
  }
}
