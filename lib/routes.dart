import 'package:flutter/material.dart';
import 'screens/home/index.dart';
import 'package:provider/provider.dart';
import 'package:gratuity/app_state.dart';

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
          scaffoldBackgroundColor: Color(0xFFEFFEF7)),
      routes: routes,
      home: ChangeNotifierProvider<AppState>(
          create: (context) => AppState(),
          child: Builder(builder: (context) {
            return Home();
          })),
    ));
  }
}
