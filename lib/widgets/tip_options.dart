import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gratuity/widgets/tip_button.dart';
import 'package:provider/provider.dart';
import 'package:gratuity/app_state.dart';

class TipOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, provider, child) {
        return Container(
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * .25),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Choose tip',
                    style: GoogleFonts.tajawal(
                      fontSize: 28.0,
                      color: Colors.black26,
                    )),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    TipButton(label: '10%', onPressed: () { provider.setTip(0.1); }, width: 80.0),
                    TipButton(label: '15%', onPressed: () { provider.setTip(0.15); }, width: 80.0),
                    TipButton(label: '20%', onPressed: () { provider.setTip(0.2); }, width: 80.0),
                  ],
                ),
                Row(
                  children: <Widget>[
                    TipButton(label: '25%', onPressed: () { provider.setTip(0.25); }, width: 80.0),
                    TipButton(label: 'Custom tip', onPressed: () { provider.setTip(0.0); }, width: 160.0),
                  ],
                )
              ],
            ));
      }
    );
  }
}
