import 'package:bookly_2/core/utils/cliper_shape.dart';
import 'package:flutter/material.dart';

class HomeClip extends StatelessWidget {
  const HomeClip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: Container4Clipper(),
      child: Container(
        color: const Color.fromARGB(255, 235, 234, 234),
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 1,
      ),
    );
  }
}
