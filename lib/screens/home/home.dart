import 'package:flutter/material.dart';
import 'package:gratuity/widgets/index.dart';

class Home extends StatelessWidget {
  // This widget is the root of your application.
  final String tip = '\$0.00';
  final String balance = '\$0.00';

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(title: Text('Gratuity Calculator'));
    Scaffold scaffold = Scaffold(
      appBar: appBar,
      body: UpdateText()
    );

    return scaffold;
  }
}