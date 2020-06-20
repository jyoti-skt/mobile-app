import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).copyWith().size.height / 3,
        child: ListTile(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
