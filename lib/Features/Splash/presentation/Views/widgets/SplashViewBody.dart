import 'package:bookly_2/Features/Splash/presentation/Views/widgets/ClipersShape.dart';
import 'package:bookly_2/Features/Splash/presentation/Views/widgets/CusytomCliper.dart';
import 'package:bookly_2/Features/Splash/presentation/Views/widgets/SlidingLogoAnimation.dart';
import 'package:bookly_2/core/utils/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    tweenanimation();
    navigetToOnBord();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff171B36),
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          CusytomCliper(
            ClipColor: const Color(0XFFDE7773),
            clipper: Container1Clipper(),
            width: double.infinity,
          ),
          Column(
            children: [
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: CusytomCliper(
                      ClipColor: const Color(0xffF6C85D),
                      clipper: Container2Clipper(),
                    ),
                  ),
                  Expanded(
                    child: CusytomCliper(
                      ClipColor: const Color(0XFF09E8B2),
                      clipper: Container3Clipper(),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SlidingLogoAnimation(slidingAnimation: slidingAnimation),
        ],
      ),
    );
  }

  void tweenanimation() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigetToOnBord() {
    Future.delayed(const Duration(milliseconds: 2000), () {
      GoRouter.of(context).push(AppRouter.KbookonBording);
    });
  }
}
