import 'package:flutter/material.dart';
import 'package:gratuity/widgets/index.dart';
import 'package:gratuity/widgets/tip_options.dart';

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
        body: ListView(children: <Widget>[
          Column(
            children: <Widget>[
              WaveContainer(title: 'Gratuity'),
              BillTotalField(),
              SizedBox(height: 30.0),
              TipOptions(),
              SizedBox(height: 30.0),
              SplitField()
            ],
          ),
        ]));
  }
}
