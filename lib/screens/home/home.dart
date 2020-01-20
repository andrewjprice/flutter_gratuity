import 'package:flutter/material.dart';
import 'package:moneytextformfield/moneytextformfield.dart';
import 'package:gratuity/widgets/index.dart';

class Home extends StatelessWidget {
  // This widget is the root of your application.
  final TextEditingController mycontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle _ts = TextStyle(fontSize: 25.0);

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

    Row tipRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        TipButton(label: '15%', onPressed: () => calculate(15.0)),
        TipButton(label: '20%', onPressed: () => calculate(20.0)),
        TipButton(label: '25%', onPressed: () => calculate(25.0)),
        TipButton(label: '30%', onPressed: () => calculate(30.0))
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