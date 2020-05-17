import 'package:flutter/material.dart';

class TipButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final double width;

  TipButton({this.label, this.onPressed, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.only(right: 10.0),
      child: RaisedButton(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.white)),
        child:
            Text(label, style: TextStyle(color: Theme.of(context).accentColor)),
        onPressed: onPressed,
      ),
    );
  }
}
