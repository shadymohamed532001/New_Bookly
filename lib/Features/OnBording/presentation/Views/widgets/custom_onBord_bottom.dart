import 'package:bookly_2/Features/OnBording/presentation/Views/widgets/list_of_onbording_continte.dart';
import 'package:bookly_2/core/utils/app_routes.dart';
import 'package:bookly_2/core/utils/my_theme.dart';
import 'package:bookly_2/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomOnBordBottom extends StatelessWidget {
  const CustomOnBordBottom({
    super.key,
    required this.currnetIndex,
    required this.pageController,
  });

  final int currnetIndex;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 50, right: 50, bottom: 50, top: 30),
        height: 60,
        width: double.infinity,
        child: ElevatedButton(
            onPressed: () {
              if (currnetIndex == continte.length - 1) {
                GoRouter.of(context).pushReplacement(AppRouter.KhomeView);
              }
              pageController.nextPage(
                  duration: const Duration(microseconds: 100),
                  curve: Curves.bounceIn);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: MyTheme.primaryColor,
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: Text(
              currnetIndex == continte.length - 1 ? 'Get Started Now' : 'Next',
              style: AppStyle.textStyle20.copyWith(
                fontWeight: FontWeight.w700,
              ),
            )));
  }
}
