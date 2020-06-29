import 'package:flutter/material.dart';

class ProductDeatailScreen extends StatelessWidget {
  // final String title;
  //ProductDeatailScreen(this.title);

  static const routeName = '/productdetails';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
    );
  }
}
