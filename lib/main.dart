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

  sampleFunction(){
    print(mycontroller.text);
  }

    MoneyTextFormField moneyTextField =  MoneyTextFormField(
      settings: MoneyTextFormFieldSettings(
          controller: mycontroller,
          moneyFormatSettings: MoneyFormatSettings(
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

    Container tip_15 = Container(
      width: 75.0,
      height: 75.0,
      child: RaisedButton(
              child: Text("15%"),
              onPressed: sampleFunction,
              color: Color(0xff0091EA),
              textColor: Colors.white,
              splashColor: Colors.grey,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            )
      );

    Container tip_20 = Container(
      width: 75.0,
      height: 75.0,
      child: RaisedButton(
              child: Text("20%"),
              onPressed: sampleFunction,
              color: Color(0xff0091EA),
              textColor: Colors.white,
              splashColor: Colors.grey,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            )
      );

    Container tip_25 = Container(
      width: 75.0,
      height: 75.0,
      child: RaisedButton(
              child: Text("25%"),
              onPressed: sampleFunction,
              color: Color(0xff0091EA),
              textColor: Colors.white,
              splashColor: Colors.grey,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            )
      );

    Container tip_30 = Container(
      width: 75.0,
      height: 75.0,
      child: RaisedButton(
              child: Text("30%"),
              onPressed: sampleFunction,
              color: Color(0xff0091EA),
              textColor: Colors.white,
              splashColor: Colors.grey,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            )
      );

    Row tipRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        tip_15, tip_20, tip_25, tip_30
      ],
    );

    Container container = Container(
      child: Column(
        children: [moneyTextField, tipRow]
      )
    );

    AppBar appBar = AppBar(title: Text('Gratuity Calculator'));
    Scaffold scaffold = Scaffold(
      appBar: appBar,
      body: container
    );

    return scaffold;
  }
}