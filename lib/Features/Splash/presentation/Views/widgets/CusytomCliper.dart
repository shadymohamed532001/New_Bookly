import 'package:flutter/material.dart';

class CusytomCliper extends StatelessWidget {
  const CusytomCliper({
    super.key,
    required this.clipper,
    this.width,
    required this.ClipColor,
  });
  final CustomClipper<Path>? clipper;
  final double? width;
  final Color ClipColor;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: clipper,
      child: Container(
        width: width,
        height: MediaQuery.of(context).size.height / 2,
        color: ClipColor,
      ),
    );
  }
}
