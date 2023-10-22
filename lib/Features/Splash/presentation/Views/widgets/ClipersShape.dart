import 'package:flutter/material.dart';

class Container3Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 1.0005600, size.height * 0.1044600);
    path_0.quadraticBezierTo(size.width * 0.6119000, size.height * -0.0258200,
        size.width * 0.5429800, size.height * 0.0791800);
    path_0.cubicTo(
        size.width * 0.4911400,
        size.height * 0.1804800,
        size.width * 0.5856600,
        size.height * 0.3554600,
        size.width * 0.5784200,
        size.height * 0.4887200);
    path_0.cubicTo(
        size.width * 0.5733200,
        size.height * 0.5782000,
        size.width * 0.5126200,
        size.height * 0.6666000,
        size.width * 0.4713600,
        size.height * 0.8204400);
    path_0.quadraticBezierTo(size.width * 0.4396200, size.height * 0.9419000,
        size.width * 0.7782000, size.height * 0.8918000);
    path_0.lineTo(size.width * 1.0122000, size.height * 0.8329600);

    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}

class Container2Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0016000, size.height * 0.1127167);
    path_0.quadraticBezierTo(size.width * 0.3006167, size.height * 0.0272000,
        size.width * 0.4032000, size.height * 0.0790000);
    path_0.cubicTo(
        size.width * 0.4914000,
        size.height * 0.1421167,
        size.width * 0.4517667,
        size.height * 0.2130833,
        size.width * 0.5195833,
        size.height * 0.3282000);
    path_0.cubicTo(
        size.width * 0.5787333,
        size.height * 0.4471667,
        size.width * 0.6281333,
        size.height * 0.4755667,
        size.width * 0.7265000,
        size.height * 0.5571333);
    path_0.cubicTo(
        size.width * 0.7941000,
        size.height * 0.6182667,
        size.width * 0.9888833,
        size.height * 0.6686167,
        size.width * 0.9879167,
        size.height * 0.8723000);
    path_0.quadraticBezierTo(size.width * 0.9701167, size.height * 1.0579167,
        size.width * 0.5542000, size.height * 1.0394000);
    path_0.lineTo(size.width * -0.0190833, size.height * 1.0946667);
    path_0.lineTo(size.width * -0.0344167, size.height * 0.4028667);
    path_0.lineTo(size.width * -0.0491000, size.height * 0.2676667);

    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    // Layer 1
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class Container1Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height - 75);
    path.quadraticBezierTo(size.width * .20, size.height + 20,
        size.width * 0.25, size.height - 100);
    path.quadraticBezierTo(
        size.width * .4, size.height - 500, size.width * 2, size.height - 470);
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}
