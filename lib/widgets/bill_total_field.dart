import 'package:gratuity/index.dart';

class BillTotalField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _controller = new MoneyMaskedTextController(
        decimalSeparator: '.', thousandSeparator: ',');

    return Consumer<AppState>(builder: (context, provider, child) {
      _controller.addListener(() {
        provider.setTotal(_controller.numberValue);
      });

      return Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .25),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Enter bill total',
                style: GoogleFonts.tajawal(
                  fontSize: 28.0,
                  color: Colors.black26,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('\$',
                    style: GoogleFonts.tajawal(
                        fontSize: 28.0,
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.bold)),
                Container(
                    width: 100,
                    child: TextField(
                      key: Key('billTotalTextField'),
                      controller: _controller,
                      textAlign: TextAlign.end,
                      style: GoogleFonts.tajawal(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).accentColor),
                      keyboardType: TextInputType.number,
                    )),
              ],
            )
          ],
        ),
      );
    });
  }
}
