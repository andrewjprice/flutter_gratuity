import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:gratuity/app_state.dart';

class CustomTip extends StatefulWidget {
  @override
  _CustomTip createState() => _CustomTip();
}

class _CustomTip extends State<CustomTip> {
  double _value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, provider, child) {
        return Container(
          child: Slider.adaptive(
              value: _value,
              onChanged: (double newValue) {
                setState(() => _value = newValue);
                provider.setCustomTip(newValue);
              },
              min: 0.0,
              max: 100.0,
              divisions: 100,
              label: _value.toString(),
            ),
        );
      }
    );
  }
}
