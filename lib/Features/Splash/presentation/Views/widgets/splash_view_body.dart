// ignore_for_file: file_names

import 'package:bookly_2/Features/Splash/presentation/Views/widgets/cusytom_cliper.dart';
import 'package:bookly_2/Features/Splash/presentation/Views/widgets/sliding_logo_animation.dart';
import 'package:bookly_2/core/utils/app_routes.dart';
import 'package:bookly_2/core/utils/cliper_shape.dart';
import 'package:bookly_2/core/utils/my_theme.dart';
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

  late Animation<double> animation;

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
    var heignt = MediaQuery.of(context).size.height;

    return SizedBox(
      height: heignt,
      child: Stack(
        children: [
          CusytomCliper(
            ClipColor: MyTheme.primaryColor,
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
                      ClipColor: const Color.fromARGB(255, 16, 32, 95),
                      clipper: Container2Clipper(),
                    ),
                  ),
                  Expanded(
                    child: CusytomCliper(
                      ClipColor: const Color.fromARGB(255, 43, 70, 63),
                      clipper: Container3Clipper(),
                    ),
                  ),
                ],
              ),
            ],
          ),
          FadeTransitionLogoAnimation(
            FadeTransitiongAnimation: animation,
            opacity: animation,
          ),
        ],
      ),
    );
  }

  void tweenanimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));

    animation = Tween<double>(begin: 0, end: 1.8).animate(animationController);
    animationController.forward();
  }

  void navigetToOnBord() {
    Future.delayed(const Duration(milliseconds: 2050), () {
      GoRouter.of(context).pushReplacement(AppRouter.KbookonBording);
    });
  }
}
