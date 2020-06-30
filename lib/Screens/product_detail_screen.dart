import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagment/providers/products.dart';

class ProductDeatailScreen extends StatelessWidget {
  // final String title;
  //ProductDeatailScreen(this.title);

  static const routeName = '/productdetails';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedProduct = Provider.of<Products>(
      context,
      listen: false,
    ).findviewById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}
