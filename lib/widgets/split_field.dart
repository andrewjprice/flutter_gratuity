import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplitField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .25),
      width: MediaQuery.of(context).size.width,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Split',
                style: GoogleFonts.assistant(
                    fontSize: 28.0,
                    color: Colors.black26,
                    fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.remove),
                    iconSize: 28.0,
                    color: Theme.of(context).accentColor,
                    onPressed: () {}),
                SizedBox(width: 10.0),
                Text('1',
                    style: GoogleFonts.assistant(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentColor)),
                SizedBox(width: 10.0),
                IconButton(
                    icon: Icon(Icons.add),
                    iconSize: 28.0,
                    color: Theme.of(context).accentColor,
                    onPressed: () {}),
              ],
            )
          ]),
    );
  }
}
