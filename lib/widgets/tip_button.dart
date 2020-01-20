import 'package:flutter/material.dart';

class TipButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  TipButton({
    this.label,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
      return Container(
        width: 75.0,
        height: 75.0,
        child: RaisedButton(
                child: Text(label),
                onPressed: onPressed,
                color: Color(0xff0091EA),
                textColor: Colors.white,
                splashColor: Colors.grey,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              )
        );
  }
}