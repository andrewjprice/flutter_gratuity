import 'package:flutter/material.dart';
import 'screens/home/index.dart';

class Routes {
  final routes = <String, WidgetBuilder>{
    '/Home': (BuildContext context) => new Home()
  };

  Routes() {
    runApp(new MaterialApp(
      title: 'Gratuity',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF9EE9C6),
        accentColor: Color(0xFF5AA47F),
        scaffoldBackgroundColor: Colors.white
      ),
      routes: routes,
      home: Home(),
    ));
  }
}