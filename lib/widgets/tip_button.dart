import 'package:gratuity/index.dart';

class TipButton extends StatelessWidget {
  final String toggleKey;
  final String label;
  final VoidCallback onPressed;
  final double width;

  TipButton({this.toggleKey, this.label, this.onPressed, this.width});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, provider, child) {
        return Container(
          width: width,
          padding: EdgeInsets.only(right: 10.0),
          child: RaisedButton(
            color: provider.toggle == toggleKey ? Theme.of(context).accentColor : Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.white)),
            child:
                Text(label,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold, color: provider.toggle == toggleKey ? Colors.white : Theme.of(context).accentColor)),
            onPressed: onPressed,
          ),
        );
      }
    );
  }
}
