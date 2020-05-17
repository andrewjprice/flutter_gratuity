import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gratuity/widgets/tip_button.dart';

class TipOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * .25),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Choose tip',
                style: GoogleFonts.assistant(
                    fontSize: 18.0,
                    color: Colors.black26,
                    fontWeight: FontWeight.bold)),
            Row(
              children: <Widget>[
                TipButton(label: '10%', onPressed: () {}, width: 75.0),
                TipButton(label: '15%', onPressed: () {}, width: 75.0),
                TipButton(label: '20%', onPressed: () {}, width: 75.0),
              ],
            ),
            Row(
              children: <Widget>[
                TipButton(label: '25%', onPressed: () {}, width: 75.0),
                TipButton(label: 'Custom tip', onPressed: () {}, width: 150.0),
              ],
            )
          ],
        ));
  }
}
