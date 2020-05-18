import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity * 2,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18.0),
                        topRight: Radius.circular(18.0))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 30.0),
                    Text('Total per person',
                        style: GoogleFonts.tajawal(
                          fontSize: 28.0,
                          color: Colors.black38,
                        )),
                    SizedBox(height: 10.0),
                    Text('\$100.00',
                        style: GoogleFonts.tajawal(
                            fontSize: 55.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4D6846))),
                    SizedBox(height: 25.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text('bill',
                                style: GoogleFonts.tajawal(
                                  fontSize: 27.0,
                                  color: Colors.black38,
                                )),
                            Text('\$0.00',
                                style: GoogleFonts.tajawal(
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF4D6846),
                                ))
                          ],
                        ),
                        SizedBox(width: 75.0),
                        Column(
                          children: <Widget>[
                            Text('tip',
                                style: GoogleFonts.tajawal(
                                  fontSize: 27.0,
                                  color: Colors.black38,
                                )),
                            Text('\$0.00',
                                style: GoogleFonts.tajawal(
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF4D6846),
                                ))
                          ],
                        )
                      ],
                    )
                  ],
                ))
          ],
        ));
  }
}
