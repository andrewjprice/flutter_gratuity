import 'package:gratuity/index.dart';

class WaveContainer extends StatelessWidget {
  final String title;
  const WaveContainer({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipPath(
          clipper: WaveClipper(),
          child: Container(
              height: 110.0,
              width: double.infinity * 2,
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: Column(
                children: <Widget>[
                  Text(title,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.arimaMadurai(fontSize: 36.0))
                ],
              ))),
    );
  }
}
