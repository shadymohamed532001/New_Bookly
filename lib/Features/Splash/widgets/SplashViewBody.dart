import 'package:bookly_2/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
                    ),
                  )
                ],
    );
  }
}

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
  bool shouldReclip(CustomClipper old) => true;
}

class Container2Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width * 1.5, size.height, size.width * .50, size.height - 200);
    path.quadraticBezierTo(
        size.width * 0, size.height - 300, size.width * .5, size.height - 400);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper old) => true;
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
  bool shouldReclip(CustomClipper old) => true;
}




// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
//   const Spacer(
//     flex: 3,
//   ),
//   Image.asset(
//     'assets/images/Bookshop-pana.png',
//     width: MediaQuery.of(context).size.width,
//     height: MediaQuery.of(context).size.height / 2.6,
//   ),
//   const Spacer(
//     flex: 3,
//   ),
//   Text(
//     'Bookly',
//     style: AppStyle.textStyle20.copyWith(
//       fontSize: 33,
//       wordSpacing: 5,
//       fontFamily: 'NanumGothic',
//     ),
//     // style: TextStyle(color: Colors.black),
//   ),
//   const Spacer(
//     flex: 3,
//   ),
//   const Row(
//     children: [],
//   )
// ],
