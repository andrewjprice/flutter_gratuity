import 'package:flutter/material.dart';
import 'package:gratuity/widgets/summary_field.dart';

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
                    SummaryField(label: 'Total per person', fontSize: 28.0, color: Colors.black38),
                    SizedBox(height: 10.0),
                    SummaryField(label: '\$100.00', fontSize: 55.0, color: Color(0xFF4D6846)),
                    SizedBox(height: 25.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            SummaryField(label: 'bill', fontSize: 28.0, color: Colors.black38),
                            SummaryField(label: '\$0.00', fontSize: 28.0, color: Color(0xFF4D6846))
                          ],
                        ),
                        SizedBox(width: 75.0),
                        Column(
                          children: <Widget>[
                            SummaryField(label: 'tip', fontSize: 28.0, color: Colors.black38),
                            SummaryField(label: '\$0.00', fontSize: 28.0, color: Color(0xFF4D6846))
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
