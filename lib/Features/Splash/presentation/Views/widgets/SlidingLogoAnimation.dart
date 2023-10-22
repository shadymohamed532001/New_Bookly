import 'package:flutter/material.dart';

class SlidingLogoAnimation extends StatelessWidget {
  const SlidingLogoAnimation({
    super.key,
    required this.slidingAnimation,
    required this.opacity,
  });

  final Animation<double> slidingAnimation;
  final Animation<double> opacity;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, widget) {
          return FadeTransition(
            opacity: opacity,
            child: Center(
              child: Image.asset(
                'assets/images/logoBlack.png',
                width: MediaQuery.of(context).size.width / 2.4,
                height: MediaQuery.of(context).size.height / 3,
              ),
            ),
          );
        });
  }
}
