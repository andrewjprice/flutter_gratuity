import 'package:flutter/material.dart';
import 'package:gratuity/widgets/index.dart';

class Home extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              WaveContainer(title: 'Gratuity')
            ],
          ),
        ]
      )
    );
  }
}
