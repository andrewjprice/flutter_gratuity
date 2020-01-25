import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gratuity/widgets/index.dart';

class UpdateText extends StatefulWidget {
  UpdateTextState createState() => UpdateTextState();
}

class UpdateTextState extends State {
  final TextEditingController mycontroller = TextEditingController();
  TextStyle _ts = TextStyle(fontSize: 25.0);
  String tipDisplay = 'Tip: ';
  String totalDisplay = 'Total: ';

  updateDisplay(double percent){
    double billTotal = double.parse(mycontroller.text);
    double tip = billTotal * percent / 100.0;
    double total = tip + billTotal;

    setState(() {
      tipDisplay = 'Tip: \$$tip';
      totalDisplay = 'Total: \$$total';
    });
  }

  @override
  Widget build(BuildContext context) {
    Row tipRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        TipButton(label: '15%', onPressed: () => updateDisplay(15.0)),
        TipButton(label: '20%', onPressed: () => updateDisplay(20.0)),
        TipButton(label: '25%', onPressed: () => updateDisplay(25.0)),
        TipButton(label: '30%', onPressed: () => updateDisplay(30.0))
      ],
    );

    Container tipDescription = Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: Text(tipDisplay, style: TextStyle(fontSize: 20))
    );

    Container totalDescription = Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: Text(totalDisplay, style: TextStyle(fontSize: 20))
    );

    Container splitContainer = Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: Column(
        children: [
          TextField(
        decoration: InputDecoration(labelText: "Number of people"),
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[WhitelistingTextInputFormatter.digitsOnly],
      ),
      RaisedButton(
        onPressed: null,
        child: Text(
          'Split'
        )),
        ],
      )
    );

    return Container(
      child: Column(
        children: [
          new CurrencyTextField(controller: mycontroller, style: _ts),
          tipRow,
          tipDescription,
          totalDescription,
          splitContainer
        ]
      )
    );
  }
}