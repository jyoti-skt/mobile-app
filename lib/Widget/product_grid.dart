import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagment/Model/product.dart';
import 'package:statemanagment/providers/products.dart';

import 'product_item.dart';

class ProductGrid extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        childAspectRatio: 3 / 2,
        mainAxisSpacing: 2,
      ),
      itemBuilder: (ctx, i) => ProductItem(
        products[i].id,
        products[i].title,
        products[i].imageUrl,
      ),
    );
  }
}