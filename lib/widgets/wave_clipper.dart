import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0, size.height * .60);

    var firstControlPoint = new Offset(size.width / 4, size.height * .30);
    var firstEndPoint = new Offset(size.width / 2, size.height * .60);

    var secondControlPoint = new Offset(size.width - (size.width / 4), size.height * .90);
    var secondEndPoint = new Offset(size.width, size.height * .60);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height / 3);
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}