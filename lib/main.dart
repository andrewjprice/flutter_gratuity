import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(title: 'Tip Calculator', home: Gratuity()));

class Gratuity extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double billAmt = 0.0;

    TextField billAmtField = TextField(
      keyboardType: TextInputType.number,
      onChanged: (String value) {
        try {
          billAmt = double.parse(value);
        } catch (exception) {
          billAmt = 0.0;
        }
      },
      decoration: InputDecoration(labelText: 'Bill Amount (\$)'),
    );

    Container container = Container(
      child: Column(
        children: [billAmtField]
      )
    );

    AppBar appBar = AppBar(title: Text('Tip Calculator'));
    Scaffold scaffold = Scaffold(appBar: appBar, body: container);
    return scaffold;
  }
}