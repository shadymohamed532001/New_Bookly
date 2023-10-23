import 'package:flutter/material.dart';

class FadeTransitionLogoAnimation extends StatelessWidget {
  const FadeTransitionLogoAnimation({
    super.key,
    required this.FadeTransitiongAnimation,
    required this.opacity,
  });

  final Animation<double> FadeTransitiongAnimation;
  final Animation<double> opacity;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: FadeTransitiongAnimation,
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
