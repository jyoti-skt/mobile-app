
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,

        body: Center(
        child: Container(
        color: Colors.white,
        child: Padding(
        padding: const EdgeInsets.all(30.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Padding(
    padding: const EdgeInsets.fromLTRB(12,1, 12, 6),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
    Padding(
    padding: const EdgeInsets.fromLTRB(5, 1, 12,6),
    child: Image.asset("assets/logo.png",height: 40,width: 50),
    ),
    ],
    ),
    ),
    Column(
    children: <Widget>[
    Text("Play | Socialise | Earn",style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: 'Inter-Black-slnt'),),
    ],
    ),
        ],
    ),
        ),
    ),
    ),
    );
  }
}
