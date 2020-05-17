import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:google_fonts/google_fonts.dart';

class BillTotalField extends StatelessWidget {
  final _controller = new MoneyMaskedTextController(
      decimalSeparator: '.', thousandSeparator: ',');

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .25),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Enter bill total',
              style: GoogleFonts.assistant(
                fontSize: 28.0,
                color: Colors.black26,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('\$',
                  style: GoogleFonts.assistant(
                      fontSize: 28.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold)),
              Container(
                  width: 100,
                  child: TextField(
                      controller: _controller,
                      textAlign: TextAlign.end,
                      style: GoogleFonts.assistant(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).accentColor),
                      keyboardType: TextInputType.number)),
            ],
          )
        ],
      ),
    );
  }
}
