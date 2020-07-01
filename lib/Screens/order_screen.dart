import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagment/Widget/appdrawer.dart';
import 'package:statemanagment/providers/orders.dart' show Orders;

import '../Widget/order_item.dart';

class OrderScreem extends StatelessWidget {
  static const routeName = '/orders';

  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Orders'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: orderData.orders.length,
        itemBuilder: (ctx, i) => OrderItem(orderData.orders[i]),
      ),
    );
  }
}
