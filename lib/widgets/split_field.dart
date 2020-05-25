import 'package:gratuity/index.dart';

class SplitField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(builder: (context, provider, child) {
      return Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .25),
        width: MediaQuery.of(context).size.width,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Split',
                  style: GoogleFonts.tajawal(
                    fontSize: 28.0,
                    color: Colors.black26,
                  )),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                      key: Key('decreaseBtn'),
                      icon: Icon(Icons.remove),
                      iconSize: 28.0,
                      color: Theme.of(context).accentColor,
                      onPressed: () {
                        provider.decreaseSplit(1);
                      }),
                  SizedBox(width: 10.0),
                  Padding(
                    padding: EdgeInsets.only(top: 7.0),
                    child: Text(provider.split.toString(),
                        style: GoogleFonts.tajawal(
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).accentColor)),
                  ),
                  SizedBox(width: 10.0),
                  IconButton(
                      key: Key('increaseBtn'),
                      icon: Icon(Icons.add),
                      iconSize: 28.0,
                      color: Theme.of(context).accentColor,
                      onPressed: () {
                        provider.increaseSplit(1);
                      }),
                ],
              )
            ]),
      );
    });
  }
}
