import 'package:flutter/material.dart';
import 'package:gratuity/widgets/index.dart';

class Home extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(10.0),
        child: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0.0,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              WaveContainer(title: 'Gratuity'),
              BillTotalField(),
            ],
          ),
        ]
      )
    );
  }
}
