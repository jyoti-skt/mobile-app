import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagment/Screens/product_detail_screen.dart';
import 'package:statemanagment/providers/cart.dart';
import 'package:statemanagment/providers/product.dart';

class ProductItem extends StatelessWidget {
//  final String id;
//  final String title;
//  final String imageUrl;
//
//  ProductItem(
//    this.id,
//    this.title,
//    this.imageUrl,
//  );

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(
      context,
    );
    final cart = Provider.of<Cart>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            ProductDeatailScreen.routeName,
            arguments: product.title,
          );
          /*Navigator.of(context).push(
              MaterialPageRoute(builder: (ctx) => ProductDeatailScreen()),
            ); */
        },
        child: GridTile(
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black54,
            leading: Consumer<Product>(
              builder: (ctx, product, child) => IconButton(
                icon: Icon(
                  product.isFavourite ? Icons.favorite : Icons.favorite_border,
                ),
                color: Theme.of(context).accentColor,
                onPressed: () {
                  product.toggleFavouriteStatus();
                },
              ),
            ),
            title: Text(product.title),
            trailing: IconButton(
              icon: Icon(Icons.shopping_cart),
              color: Theme.of(context).accentColor,
              onPressed: () {
                cart.addItems(product.id, product.price, product.title);
              },
            ),
          ),
        ),
      ),
    );
  }
}
