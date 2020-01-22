import 'package:flutter/material.dart';
import 'package:moneytextformfield/moneytextformfield.dart';

class CurrencyTextField extends StatelessWidget {
  final controller;
  final style;

  CurrencyTextField({
    this.controller,
    this.style
  });

  @override
  Widget build(BuildContext context) {
      return MoneyTextFormField(
      settings: MoneyTextFormFieldSettings(
          controller: controller,
          moneyFormatSettings: MoneyFormatSettings(
              displayFormat: MoneyDisplayFormat.symbolOnLeft),
          appearanceSettings: AppearanceSettings(
              padding: EdgeInsets.all(15.0),
              labelText: 'Total',
              hintText: 'Amount',
              labelStyle: style,
              inputStyle: style.copyWith(color: Colors.black),
              formattedStyle:
                  style.copyWith(color: Colors.green))),
    );
  }
}