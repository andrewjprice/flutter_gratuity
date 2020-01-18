import 'package:flutter/material.dart';
import 'package:moneytextformfield/moneytextformfield.dart';

void main() => runApp(MaterialApp(title: 'Tip Calculator', home: Gratuity()));

class Gratuity extends StatelessWidget {
  // This widget is the root of your application.
  TextEditingController mycontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle _ts = TextStyle(fontSize: 26.0);
    double billAmt = 0.0;

    MoneyTextFormField moneyTextField =  MoneyTextFormField(
      settings: MoneyTextFormFieldSettings(
          controller: mycontroller,
          moneyFormatSettings: MoneyFormatSettings(
              currencySymbol: 'IDR',
              displayFormat: MoneyDisplayFormat.symbolOnLeft),
          appearanceSettings: AppearanceSettings(
              padding: EdgeInsets.all(15.0),
              labelText: 'Total',
              hintText: 'Amount',
              labelStyle: _ts,
              inputStyle: _ts.copyWith(color: Colors.black),
              formattedStyle:
                  _ts.copyWith(color: Colors.green))),
    );

    Container container = Container(
      child: Column(
        children: [moneyTextField]
      )
    );

    AppBar appBar = AppBar(title: Text('Gratuity Calculator'));
    Scaffold scaffold = Scaffold(appBar: appBar, body: container);
    return scaffold;
  }
}