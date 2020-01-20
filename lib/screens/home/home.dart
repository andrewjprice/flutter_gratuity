import 'package:flutter/material.dart';
import 'package:moneytextformfield/moneytextformfield.dart';

class Home extends StatelessWidget {
  // This widget is the root of your application.
  final TextEditingController mycontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle _ts = TextStyle(fontSize: 26.0);

  calculate(double percent){
    double billTotal = double.parse(mycontroller.text);
    double tip = billTotal * percent / 100.0;
    double total = tip + billTotal;

    AlertDialog results = AlertDialog(
      content: Text("Tip: \$$tip \n" "Total: \$$total")
    );

    showDialog(context: context, builder: (BuildContext context) => results);
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
              onPressed: () => calculate(15.0),
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
              onPressed: () => calculate(20.0),
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
              onPressed: () => calculate(25.0),
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
              onPressed: () => calculate(30.0),
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