import 'package:flutter/material.dart';

class SlidingLogoAnimation extends StatelessWidget {
  const SlidingLogoAnimation({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, widget) {
          return SlideTransition(
            position: slidingAnimation,
            child: Center(
              child: Image.asset(
                'assets/images/Group 5.png',
                width: MediaQuery.of(context).size.width / 2.4,
                height: MediaQuery.of(context).size.height / 3,
              ),
            ),
          );
        });
  }
}
