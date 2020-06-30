import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagment/Widget/badge.dart';
import 'package:statemanagment/Widget/product_grid.dart';
import 'package:statemanagment/providers/cart.dart';

enum FilterOptions {
  Favourite,
  All,
}

class ProductOverviewScren extends StatefulWidget {
//  final List<Product> loadedProducts = [
//    Product(
//      id: 'p1',
//      title: 'Red Shirt',
//      description: 'A red shirt - it is pretty red!',
//      price: 29.99,
//      imageUrl:
//          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
//    ),
//    Product(
//      id: 'p2',
//      title: 'Trousers',
//      description: 'A nice pair of trousers.',
//      price: 59.99,
//      imageUrl:
//          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
//    ),
//    Product(
//      id: 'p3',
//      title: 'Yellow Scarf',
//      description: 'Warm and cozy - exactly what you need for the winter.',
//      price: 19.99,
//      imageUrl:
//          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
//    ),
//    Product(
//      id: 'p4',
//      title: 'A Pan',
//      description: 'Prepare any meal you want.',
//      price: 49.99,
//      imageUrl:
//          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
//    ),
//  ];
  @override
  _ProductOverviewScrenState createState() => _ProductOverviewScrenState();
}

class _ProductOverviewScrenState extends State<ProductOverviewScren> {
  var _showOnlyFavourites = false;

  @override
  Widget build(BuildContext context) {
    // final productContainer = Provider.of<Products>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MyShop',
        ),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.Favourite) {
                  // productContainer.showFavouriteOnly();

                  _showOnlyFavourites = true;
                } else {
                  // productContainer.showAll();
                  _showOnlyFavourites = false;
                }
              });
            },
            icon: Icon(
              Icons.more_vert,
            ),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Only Favourite'),
                value: FilterOptions.Favourite,
              ),
              PopupMenuItem(
                child: Text('Show All'),
                value: FilterOptions.All,
              ),
            ],
          ),
          Consumer<Cart>(
            builder: (_, cart, ch) => Badge(
              child: ch,
            ),
            child: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: ProductGrid(_showOnlyFavourites),
    );
  }
}

/*class ProductGrid extends StatelessWidget {
  const ProductGrid({
    Key key,
    @required this.loadedProducts,
  }) : super(key: key);

  final List<Product> loadedProducts;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: loadedProducts.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        childAspectRatio: 3 / 2,
        mainAxisSpacing: 2,
      ),
      itemBuilder: (ctx, i) => ProductItem(
        loadedProducts[i].id,
        loadedProducts[i].title,
        loadedProducts[i].imageUrl,
      ),
    );
  }
}*/
