import 'package:Sample/secondpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'dash.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Dashboard(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/second':
            return PageTransition(
              child: SecondPage(),
              type: PageTransitionType.scale,
              settings: settings,
            );
            break;
          default:
            return null;
        }
      },
    ),
  );
}

// api test code of main.dart

//import 'package:apitest/dashboardPage.dart';
//import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';

//void main() {
//  runApp(MyApp());
//}
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: kAppTitle,
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//        visualDensity: VisualDensity.adaptivePlatformDensity,
//      ),
//      home: Walkthrough(),
//    );
//  }
//}
//Future<void> main() async {
//  WidgetsFlutterBinding.ensureInitialized();
//
//  String _token, _userId;
//  SharedPreferences prefs = await SharedPreferences.getInstance();
//  _userId = prefs.getString('userId');
//  _token = prefs.get('accessToken');
//  runApp(
//    MaterialApp(
//      debugShowCheckedModeBanner: false,
//      title: 'Go Game',
//      theme: ThemeData(
//          primarySwatch: Colors.blue,
//          visualDensity: VisualDensity.adaptivePlatformDensity,
//          appBarTheme: AppBarTheme(
//            elevation: 0,
//            color: Colors.grey[50],
//          )),
//      home: DashboardPage(),
//    ),
//  );
//}
