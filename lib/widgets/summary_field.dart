import 'package:gratuity/index.dart';

class SummaryField extends StatelessWidget {
  final String label;
  final Color color;
  final double fontSize;
  SummaryField({ this.label, this.fontSize, this.color });

  @override
  Widget build(BuildContext context) {
    return Text(label,
        style: GoogleFonts.tajawal(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: color,
        ));
  }
}
