// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class CusytomCliper extends StatelessWidget {
  const CusytomCliper({
    super.key,
    required this.clipper,
    this.width,
    required this.ClipColor,
    this.transform,
  });
  final CustomClipper<Path>? clipper;
  final double? width;
  final Color ClipColor;
  final Matrix4? transform;

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
