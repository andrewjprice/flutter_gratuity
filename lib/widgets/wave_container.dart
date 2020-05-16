import 'package:flutter/material.dart';
import 'package:gratuity/widgets/wave_clipper.dart';
import 'package:google_fonts/google_fonts.dart';

class WaveContainer extends StatelessWidget {
  final String title;
  const WaveContainer({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipPath(
          clipper: WaveClipper(),
          child: Container(
            height: 300.0,
            width: double.infinity * 2,
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.arimaMadurai(fontSize: 24.0)),
            ),
          )),
    );
  }
}
