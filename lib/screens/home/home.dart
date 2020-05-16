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
              ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  height: 300.0,
                  width: double.infinity * 2,
                  decoration: BoxDecoration(color: Theme.of(context).primaryColor),
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text("Gratuity",
                        textAlign: TextAlign.center, 
                        style: TextStyle(fontSize: 24.0, fontFamily: 'Schyler', color: Colors.black)),
                  ),
                )
              ),
            ],
          ),
        ]
      )
    );
  }
}
