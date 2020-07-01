import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagment/Screens/order_screen.dart';
import 'package:statemanagment/Screens/product_detail_screen.dart';
import 'package:statemanagment/providers/cart.dart';

import './Screens/product_overview_screen.dart';
import './providers/products.dart';
import 'Screens/cart_screen.dart';
import 'providers/orders.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Orders(),
        )
      ],
      child: MaterialApp(
        title: 'Fluttere Demo',
        theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.deepOrange,
            fontFamily: 'Lato'),
        home: ProductOverviewScren(),
        routes: {
          ProductDeatailScreen.routeName: (ctx) => ProductDeatailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrderScreem.routeName: (ctx) => OrderScreem(),
        },
      ),
    );
  }
}

/*class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),
      body: Container(
        child: Center(
          child: Text('This is demo app'),
        ),
      ),
    );
  }
}  */
