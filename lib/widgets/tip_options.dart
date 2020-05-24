import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gratuity/widgets/tip_button.dart';
import 'package:provider/provider.dart';
import 'package:gratuity/app_state.dart';

class TipOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(builder: (context, provider, child) {
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
                TipButton(
                    label: '10%',
                    onPressed: () {
                      provider.setTip(0.1, '10');
                    },
                    width: 80.0,
                    toggleKey: '10'),
                TipButton(
                    label: '15%',
                    onPressed: () {
                      provider.setTip(0.15, '15');
                    },
                    width: 80.0,
                    toggleKey: '15'),
                TipButton(
                    label: '20%',
                    onPressed: () {
                      provider.setTip(0.2, '20');
                    },
                    width: 80.0,
                    toggleKey: '20'),
              ],
            ),
            Row(
              children: <Widget>[
                TipButton(
                    label: '25%',
                    onPressed: () {
                      provider.setTip(0.25, '25');
                    },
                    width: 80.0,
                    toggleKey: '25'),
                TipButton(
                    label: provider.toggle == 'custom'
                        ? 'Custom: ${provider.customTipDisplay}%'
                        : 'Custom tip',
                    onPressed: () {
                      provider.setTip(0.0, 'custom');
                    },
                    width: 160.0,
                    toggleKey: 'custom'),
              ],
            ),
            Visibility(
              visible: provider.toggle == 'custom',
              child: Container(
                width: MediaQuery.of(context).size.width * .6,
                child: Slider.adaptive(
                  value: provider.tip * 100,
                  onChanged: (double newValue) {
                    provider.setCustomTip(newValue);
                  },
                  min: 0.0,
                  max: 100.0,
                  divisions: 100,
                  label: provider.customTipDisplay,
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
